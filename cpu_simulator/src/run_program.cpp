#include <string>

#include <iostream>
#include <iomanip>

#include "run_program.h"
#include "constants.h"


void escape_escape_sequences(std::string& str) {
    std::pair<char, char> const sequences[]{
      { '\a', 'a' },
      { '\b', 'b' },
      { '\f', 'f' },
      { '\n', 'n' },
      { '\r', 'r' },
      { '\t', 't' },
      { '\v', 'v' },
      { '\'', '\'' },
      { '\0', '0' },
    };

    for (size_t i = 0; i < str.length(); ++i) {
        char* const c = str.data() + i;

        for (auto const &seq : sequences) { // '&' to prevent copy
            if (*c == seq.first) {
                *c = seq.second;
                str.insert(i, "\\");
                ++i; // to account for inserted "\\"
                break;
            }
        }
    }
}

void run_program(std::vector<uint8_t>& mem, const std::vector<uint8_t>& ina, const std::vector<uint8_t>& inb) // ina and inb are const (read-only streams)
{
    uint16_t pc = 0x8000; // starting address
    uint16_t mar = 0x0000;

    uint8_t a = 0x00;
    uint8_t b = 0x00;
    uint8_t x = 0x00;
    uint8_t sp = 0x00;

    uint8_t ir = 0x00;
    uint8_t buf = 0x00;

    uint8_t outmode = 0x00;
    
    bool zflag = false;
    bool cflag = false;

    bool hlt = false;

    std::vector<uint8_t>::const_iterator ina_iter = ina.begin();
    std::vector<uint8_t>::const_iterator inb_iter = inb.begin();


    auto getimm = [&]
    {
        mar = ((mar & 0xFF00) | (pc & 0x00FF)); // PCL out; MARL in
        mar = ((mar & 0x00FF) | (pc & 0xFF00)); // PCH out; MARH in

        ++pc;
    };

    auto getaddr8 = [&]
    {
        mar = ((mar & 0xFF00) | (pc & 0x00FF)); // PCL out; MARL in
        mar = ((mar & 0x00FF) | (pc & 0xFF00)); // PCH out; MARH in

        ++pc;

        mar = ((mar & 0xFF00) | mem[mar]); // mem out, MARL in
        mar = ((mar & 0x00FF) | (0 << 8)); // zero MARH (zero page)
    };

    auto getaddr16 = [&]
    {
        mar = ((mar & 0xFF00) | (pc & 0x00FF)); // PCL out; MARL in
        mar = ((mar & 0x00FF) | (pc & 0xFF00)); // PCH out; MARH in

        ++pc;

        buf = mem[mar]; // buffer addr low byte

        mar = ((mar & 0xFF00) | (pc & 0x00FF)); // PCL out; MARL in
        mar = ((mar & 0x00FF) | (pc & 0xFF00)); // PCH out; MARH in

        ++pc;

        mar = ((mar & 0x00FF) | (mem[mar]) << 8); // mem out, MARH in
        mar = ((mar & 0xFF00) | buf); // buf out, MARL in
    };

    auto getaddr16x = [&]
    {
        mar = ((mar & 0xFF00) | (pc & 0x00FF)); // PCL out; MARL in
        mar = ((mar & 0x00FF) | (pc & 0xFF00)); // PCH out; MARH in

        ++pc;

        mar = ((mar & 0x00FF) | (mem[mar]) << 8); // mem out, MARH in
        mar = ((mar & 0xFF00) | x); // X out, MARL in
        
    };

    auto getaddrxb = [&]
    {
        mar = ((mar & 0xFF00) | b); // B out, MARL in
        mar = ((mar & 0x00FF) | (x << 8)); // X out, MARH in

    };

    auto read = [&]
    {
        return mem[mar];
    };

    auto write = [&](uint8_t val)
    {
        if (!(mar & 0x8000)) mem[mar] = val; // write if address in in RAM
    };

    auto push = [&](uint8_t val)
    {
        mar = ((mar & 0xFF00) | (sp)); // sp out, MARL in
        mar = ((mar & 0x00FF) | (0x01 << 8)); // set MARH to 0x01 (stack page);

        write(val);

        --sp; // post-decrement stack pointer (downwards empty stack)
    };

    auto pop = [&]
    {
        ++sp; // pre-increment stack pointer (downwards empty stack)

        mar = ((mar & 0xFF00) | (sp)); // sp out, MARL in
        mar = ((mar & 0x00FF) | (0x01 << 8)); // set MARH to 0x01 (stack page);

        return read();
    };

    auto rolc_mem = [&]
    {
        a = b = read(); // set operands

        bool temp_cflag = ((static_cast<uint16_t>(a) + b + cflag) & 0x100); // set carry flag accordingly


        uint8_t result = (a + b + cflag); // add with carry

        cflag = temp_cflag;
        zflag = (!result); // set zero flag

        write(result);
    };

    auto subc_mem = [&]
    {
        b = read();

        bool temp_cflag = ((static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag) & 0x100);

        a += (static_cast<uint8_t>(~b) + cflag); // add 1's complement (becomes 2's complement if carry set)

        cflag = temp_cflag;
        zflag = (!a); // set zero flag
    };

    auto addc_a_mem = [&]
    {
        b = read();

        bool temp_cflag = ((static_cast<uint16_t>(a) + b + cflag) & 0x100);

        a += (b + cflag); // add b with carry

        cflag = temp_cflag;
        zflag = (!a); // set zero flag
    };

    auto addc_b_mem = [&]
    {
        a = read();

        bool temp_cflag = ((static_cast<uint16_t>(a) + b + cflag) & 0x100);

        b += (a + cflag); // add b with carry

        cflag = temp_cflag;
        zflag = (!b); // set zero flag
    };

    auto cmp_mem = [&]
    {
        b = read();

        cflag = ((static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag) & 0x100); // set carry; add 1's complement (becomes 2's complement if carry was set)
        zflag = (!static_cast<uint8_t>(static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag)); // set zero flag to 8-bit result
    };

    auto or_mem = [&]
    {
        b = read();

        a |= b;

        cflag = (a & (1 << 7)); // set carry to bit 7 of result
        zflag = (!a);
    };

    auto and_mem = [&]
    {
        b = read();

        a &= b;

        cflag = (a & (1 << 7)); // set carry to bit 7 of result
        zflag = (!a);
    };

    auto jmp_16 = [&]
    {
        getimm();
        buf = read(); // read low byte and buffer

        getimm();
        pc = ((pc & 0x00FF) | (read()) << 8); // read high byte into PCH

        pc = ((pc & 0xFF00) | buf); // move low byte into PCL
    };

    auto jmp_16x = [&]
    {
        getimm();
        pc = ((pc & 0x00FF) | (read() << 8)); // read high byte into PCH

        pc = ((pc & 0xFF00) | x); // move low byte (X) into PCH
    };

    auto out = [&](uint8_t val)
    {
        switch (static_cast<outmode_enum>(outmode & 0b11)) // cast 2 LS bits of outmode to outmode_enum type
        {
        case outmode_enum::UX: // unsigned hex
            {
                std::string out_string(1, static_cast<char>(val));

                escape_escape_sequences(out_string);

                std::cout << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << static_cast<unsigned int>(val) << " ('" << out_string << "')\n";
                break;
            }
        case outmode_enum::TEXT: // output as ASCII
            std::cout << val;
            break;
        case outmode_enum::UD: // unsigned decimal
            std::cout << static_cast<unsigned int>(val);
            break;
        case outmode_enum::SD: // signed (2's complement) decimal
            std::cout << static_cast<int>(static_cast<int8_t>(val)); // cast to signed int8_t, then to int for display as number instead of char
            break;
        }
    };

    auto input = [&](std::vector<uint8_t>::const_iterator& iter, const std::vector<uint8_t>& stream) // pass iter by reference to modify it, pass stream by reference due to size
    {
        if (iter == stream.end()) // if end of input file reached
        {
            return static_cast<uint8_t>(0); // return '\0' if stream exhausted
        }

        return *(iter++); // read, then move iterator
    };

    do
    {
        getimm();

        ir = read();

        switch (ir)
        {
        case NOP:
            break;
            break;
        case HLT:
            hlt = true;
            break;
        case CLC:
            cflag = false;
            break;
        case SEC:
            cflag = true;
            break;

        case MOVAB:
            b = a;
            break;
        case MOVBA:
            a = b;
            break;
        case MOVAX:
            x = a;
            break;
        case MOVXA:
            a = x;
            break;


        case MOVASP:
            sp = a;
            break;
        case MOVSPA:
            a = sp;
            break;
        case MOVBX:
            x = b;
            break;
        case MOVXB:
            b = x;
            break;
            

        case MOVBSP:
            sp = b;
            break;
        case MOVSPB:
            b = sp;
            break;
        case MOVXSP:
            sp = x;
            break;
        case MOVSPX:
            x = sp;
            break;


        case MOVINAA:
            a = input(ina_iter, ina);
            break;
        case CMPCAB:
            cflag = ((static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag) & 0x100); // set carry; add 1's complement (becomes 2's complement if carry was set)
            zflag = (!static_cast<uint8_t>(a + static_cast<uint8_t>(~b) + cflag)); // set zero flag to 8-bit result
            break;
        case CMPCAX:
            b = x;

            cflag = ((static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag) & 0x100); // set carry; add 1's complement (becomes 2's complement if carry was set)
            zflag = (!static_cast<uint8_t>(a + static_cast<uint8_t>(~b) + cflag)); // set zero flag to 8-bit result
            break;
        case CMPCASP:
            b = x;

            cflag = ((static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag) & 0x100); // set carry; add 1's complement (becomes 2's complement if carry was set)
            zflag = (!static_cast<uint8_t>(a + static_cast<uint8_t>(~b) + cflag)); // set zero flag to 8-bit result
            break;
        
        
        case MOVINAB:
            b = input(ina_iter, ina);
            break;
        case SWAPAB:
            buf = a;
            a = b;
            b = buf;
            break;
        case SWAPAX:
            buf = a;
            a = x;
            x = buf;
            break;
        case ORBA:
            a |= b;

            cflag = (a & (1 << 7)); // set carry to bit 7 of result
            zflag = (!a);
            break;

        case MOVINBA:
            a = input(inb_iter, inb);
            break;
        case SWAPBX:
            buf = b;
            b = x;
            x = buf;
            break;
        case ANDBA:
            a &= b;

            cflag = (a & (1 << 7)); // set carry to bit 7 of result
            zflag = (!a);
            break;

        case MOVINBB:
            b = input(inb_iter, inb);
            break;
        case OUTA:
            out(a);
            break;
        case OUTB:
            out(b);
            break;
        case OUTX:
            out(x);
            break;

        case ADDC8A:
            getaddr8();
            addc_a_mem();
            break;
        case ROLC16:
            getaddr16();
            rolc_mem();
            break;
        case ROLC16X:
            getaddr16x();
            rolc_mem();
            break;
        case ROLCXB:
            getaddrxb();
            rolc_mem();
            break;

        case SUBC8A:
            getaddr8();
            subc_mem();
            break;
        case SUBC16A:
            getaddr16();
            subc_mem();
            break;
        case SUBC16XA:
            getaddr16x();
            subc_mem();
            break;
        case SUBCXBA:
            getaddrxb();
            subc_mem();
            break;

        case ADDCIA:
            getimm();
            addc_a_mem();
            break;
        case ADDC16A:
            getaddr16();
            addc_a_mem();
            break;
        case ADDC16XA:
            getaddr16x();
            addc_a_mem();
            break;
        case ADDCXBA:
            getaddrxb();
            addc_a_mem();
            break;
        
        case ADDCIB:
            getimm();
            addc_b_mem();
            break;
        case ADDC16B:
            getaddr16();
            addc_b_mem();
            break;
        case ADDC16XB:
            getaddr16x();
            addc_b_mem();
            break;
        case ADDCXBB:
            getaddrxb();
            addc_b_mem();
            break;

        case CMPCIA:
            getimm();
            cmp_mem();
            break;
        case CMPC16A:
            getaddr16();
            cmp_mem();
            break;
        case CMPC16XA:
            getaddr16x();
            cmp_mem();
            break;
        case CMPCXBA:
            getaddrxb();
            cmp_mem();
            break;

        case ORIA:
            getimm();
            or_mem();
            break;
        case OR16A:
            getaddr16();
            or_mem();
            break;
        case OR16XA:
            getaddr16x();
            or_mem();
            break;
        case ORXBA:
            getaddrxb();
            or_mem();
            break;

        case ANDIA:
            getimm();
            and_mem();
            break;
        case AND16A:
            getaddr16();
            and_mem();
            break;
        case AND16XA:
            getaddr16x();
            and_mem();
            break;
        case ANDXBA:
            getaddrxb();
            and_mem();
            break;
        
        case OUTI:
            getimm();
            out(read());
            break;
        case OUT16:
            getaddr16();
            out(read());
            break;
        case OUT16X:
            getaddr16x();
            out(read());
            break;
        case OUTXB:
            getaddrxb();
            out(read());
            break;


        case MOVIA:
            getimm();
            a = read();
            break;
        case MOV16A:
            getaddr16();
            a = read();
            break;
        case MOV16XA:
            getaddr16x();
            a = read();
            break;
        case MOVXBA:
            getaddrxb();
            a = read();
            break;


        case MOV8A:
            getaddr8();
            a = read();
            break;
        case MOVA16:
            getaddr16();
            write(a);
            break;
        case MOVA16X:
            getaddr16x();
            write(a);
            break;
        case MOVAXB:
            getaddrxb();
            write(a);
            break;


        case MOVA8:
            getaddr8();
            write(a);
            break;
        case MOVB16:
            getaddr16();
            write(b);
            break;
        case MOVB16X:
            getaddr16x();
            write(b);
            break;
        case JMPXB:
            pc = ((pc & 0xFF00) | b);
            pc = ((pc & 0x00FF) | (x << 8));
            break;


        case MOVIB:
            getimm();
            b = read();
            break;
        case MOV16B:
            getaddr16();
            b = read();
            break;
        case MOV16XB:
            getaddr16x();
            b = read();
            break;
        case MOVXBB:
            getaddrxb();
            b = read();
            break;


        case MOVIX:
            getimm();
            x = read();
            break;
        case MOV16X:
            getaddr16();
            x = read();
            break;
        case MOV16XX:
            getaddr16x();
            x = read();
            break;
        case MOVXBX:
            getaddrxb();
            x = read();
            break;

        
        case PUSHI:
            getimm();
            buf = read();
            push(buf);
            break;
        case MOVX16:
            getaddr16();
            write(x);
            break;
        case RTS:
            pc = ((pc & 0xFF00) | pop()); // pop (return address - 1) low byte
            pc = ((pc & 0x00FF) | (pop() << 8)); // pop (return address - 1) high byte

            ++pc; // (return address - 1) was pushed, go to return address
            break;

        case MOVISP:
            getimm();
            sp = read();
            break;

        case OUTMODE:
            getimm();
            outmode = read();
            break;



        case JSR16:
            getimm();
            buf = read(); // read low byte and buffer

            push(pc >> 8); // push (return address - 1) high byte
            push(pc & 0xFF); // push (return address - 1) low byte

            mar = ((mar & 0xFF00) | (pc & 0x00FF)); // PCL out; MARL in (to be able to get high byte of jump addr)
            mar = ((mar & 0x00FF) | (pc & 0xFF00)); // PCH out; MARH in (to be able to get high byte of jump addr)

            pc = ((pc & 0x00FF) | (read()<<8)); // read high byte into PCH

            pc = ((pc & 0xFF00) | buf); // move low byte into PCL
            break;
        case ROLCA:
        {
            b = a;

            bool temp_cflag = ((static_cast<uint16_t>(a) + b + cflag) & 0x100); // set carry flag accordingly

            a += (b + cflag); // add with carry

            cflag = temp_cflag;
            zflag = (!a); // set zero flag
            break;
        }

        case ROLCB:
        {
            a = b;

            bool temp_cflag = ((static_cast<uint16_t>(a) + b + cflag) & 0x100); // set carry flag accordingly

            b += (a + cflag); // add with carry

            cflag = temp_cflag;
            zflag = (!b); // set zero flag
            break;
        }

        case JMP16:
            jmp_16();
            break;
        case JMP16X:
            jmp_16x();
            break;
        case SUBCBA:
        {
            bool temp_cflag = ((static_cast<uint16_t>(a) + static_cast<uint8_t>(~b) + cflag) & 0x100);

            a += (static_cast<uint8_t>(~b) + cflag); // add 1's complement (becomes 2's complement if carry Zset)

            cflag = temp_cflag;
            zflag = (!a);
            break;
        }
        case DECX:
            --x;
            break;

        case JC16:
            if (cflag)
            {
                jmp_16();
            }
            else
            {
                ++pc; // jump over 16-bit address
                ++pc;
            }
            break;
        case JC16X:
            if (cflag)
            {
                jmp_16x();
            }
            else
            {
                ++pc; // jump over high byte of address
            }
            break;
        case ADDCBA:
        {
            bool temp_cflag = ((static_cast<uint16_t>(a) + b + cflag) & 0x100);

            a += (b + cflag);

            cflag = temp_cflag;
            zflag = (!a);
            break;
        }

        case INCX:
            ++x;
            break;
        
        case JNC16:
            if (!cflag)
            {
                jmp_16();
            }
            else
            {
                ++pc; // jump over 16-bit address
                ++pc;
            }
            break;
        case JNC16X:
            if (!cflag)
            {
                jmp_16x();
            }
            else
            {
                ++pc; // jump over high byte of address
            }
            break;
        
        case PUSH:
            --sp; // decrement without access to memory
            break;
        case POP:
            ++sp; // increment without access to memory
            break;

        case JZ16:
            if (zflag)
            {
                jmp_16();
            }
            else
            {
                ++pc; // jump over 16-bit address
                ++pc;
            }
            break;
        case JZ16X:
            if (zflag)
            {
                jmp_16x();
            }
            else
            {
                ++pc; // jump over high byte of address
            }
            break;
        case PUSHA:
            push(a);
            break;
        case POPA:
            a = pop();
            break;

        case JNZ16:
            if (!zflag)
            {
                jmp_16();
            }
            else
            {
                ++pc; // jump over 16-bit address
                ++pc;
            }
            break;
        case JNZ16X:
            if (!zflag)
            {
                jmp_16x();
            }
            else
            {
                ++pc; // jump over high byte of address
            }
            break;
        case PUSHB:
            push(b);
            break;
        case POPB:
            b = pop();
            break;

        case PUSHX:
            push(x);
            break;
        case POPX:
            x = pop();
            break;

        case PUSHFLAGS:
            push((zflag << 1) | static_cast<int>(cflag)); // zero flag is bit 1, carry flag is bit 0
            break;
        case POPFLAGS:
        {
            auto pop_val = pop();
            cflag = (pop_val & 0b0001); // zero flag is bit 1, carry flag is bit 0
            zflag = (pop_val & 0b0010);
            break;
        }
        default:
            std::cout << "Invalid opcode: 0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << static_cast<unsigned int>(ir);
            break;
        }
    } while (!hlt);
}