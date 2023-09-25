#once

#subruledef outmode
{
    ux => 0b000000_00 ; unsigned hexadecimal mode
    text => 0b000000_01 ; display as ux on 8-seg, plus display ASCII characters on 16-seg
    ud => 0b000000_10 ; unsigned decimal mode
    sd => 0b000000_11 ; signed decimal mode
}

#ruledef
{
    ; NO-OP

    nop => 0x00
    

    ; HALT

    hlt => 0x01

    ; CLEAR/SET CARRY

    clc => 0x02
    sec => 0x03

    ; LOAD INTO A

    mov #{val:i8}, a => 0x08 @ val
    mov {zpaddr:u8}, a => 0x18 @ zpaddr
    mov {addr:u16}, a => 0x09 @ le(addr)
    mov ({addr:u16}, x), a =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x0A @ (addr >> 8)`8
    }
    mov (x, b), a => 0x0B

    ; LOAD INTO B

    mov #{val:i8}, b => 0x38 @ val
    mov {addr:u16}, b => 0x39 @ le(addr)
    mov ({addr:u16}, x), b =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x3A @ (addr >> 8)`8
    }
    mov (x, b), b => 0x3B

    ; LOAD INTO X

    mov #{val:i8}, x => 0x48 @ val
    mov {addr:u16}, x => 0x49 @ le(addr)
    mov ({addr:u16}, x), x => ; loads x based on current x as index
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately
        0x4A @ (addr >> 8)`8
    }
    mov (x, b), x => 0x4B

    ; LOAD INTO SP
    
    mov #{val:i8}, sp => 0x68 @ val

    ; STORE A

    mov a, {zpaddr:u8} => 0x28 @ zpaddr
    mov a, {addr:u16} => 0x19 @ le(addr)
    mov a, ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x1A @ (addr >> 8)`8
    }
    mov a, (x, b) => 0x1B
    
    ; STORE B

    mov b, {addr:u16} => 0x29 @ le(addr)
    mov b, ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x2A @ (addr >> 8)`8
    }

    ; STORE X
    mov x, {addr:u16} => 0x59 @ le(addr)


    ; INTER-REGISTER TRANSFERS

    swap a, b => 0x51
    swap a, x => 0x52
    swap b, x => 0x61

    mov a, b => 0x10
    mov b, a => 0x11

    mov a, x => 0x12
    mov x, a => 0x13

    mov a, sp => 0x20
    mov sp, a => 0x21

    mov b, x => 0x22
    mov x, b => 0x23

    mov b, sp => 0x30
    mov sp, b => 0x31

    mov x, sp => 0x32
    mov sp, x => 0x33

    ; INPUT PORTS

    mov ina, a => 0x40
    mov ina, b => 0x50

    mov inb, a => 0x60
    mov inb, b => 0x70

    ; OUTPUT

    out a => 0x71
    out b => 0x72
    out x => 0x73

    out #{val:i8} => 0x74 @ val
    out {addr:u16} => 0x75 @ le(addr)
    out ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x76 @ (addr >> 8)`8
    }
    out (x, b) => 0x77

    outmode {mode:outmode} => 0x78 @ mode

    ; STACK

    push #{val:i8} => 0x58 @ val

    push => 0x3E ; decrement SP without accessing memory (useful to navigate the stack)
    pop => 0x3F ; increment SP without accessing memory (useful to navigate the stack)

    push a => 0x4E
    pop a => 0x4F
    
    push b => 0x5E
    pop b => 0x5F
    
    push x => 0x6E
    pop x => 0x6F

    push flags => 0x7E ; pushes flags (format: 0b000000_Z_C)
    pop flags => 0x7F ; pops flags (format: 0b000000_Z_C)
    
    ; INCREMENT/DECREMENT X (CAUTION : DOES NOT SET FLAGS)

    inc x => 0x2F
    dec x => 0x1F

    ; ADD WITH CARRY

    ; overwrites B with value
    addc #{val:i8}, a => 0x24 @ val 
    addc {zpaddr:u8}, a => 0x04 @ zpaddr
    addc {addr:u16}, a => 0x25 @ le(addr)
    addc ({addr:u16}, x), a =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x26 @ (addr >> 8)`8
    }
    addc (x, b), a => 0x27

    addc b, a => 0x2E

    ; overwrites A with value
    addc #{val:i8}, b => 0x34 @ val
    addc {addr:u16}, b => 0x35 @ le(addr)
    addc ({addr:u16}, x), b =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x36 @ (addr >> 8)`8
    }
    addc (x, b), b => 0x37

    ; ADD WITHOUT CARRY
    
    ; overwrites B with value
    add #{val:i8}, a => asm
    {
        clc ; clear carry
        addc # val, a
    }
    ; \/ *** ALSO VALID FOR {zpaddr:u8} (zp mode is selected within the asm block)***
    add {addr:u16}, a => asm
    {
        clc
        addc addr, a
    }
    add ({addr:u16}, x), a => asm
    {
        clc
        addc (addr, x), a
    }
    add (x, b), a => asm
    {
        clc
        addc (x, b), a
    }

    add b, a => asm
    {
        clc
        addc b, a
    }

    ; overwrites A with value
    add #{val:i8}, b => asm
    {
        clc ; clear carry
        addc # val, b
    }
    add {addr:u16}, b => asm
    {
        clc
        addc addr, b
    }
    add ({addr:u16}, x), b => asm
    {
        clc
        addc (addr, x), b
    }
    add (x, b), b => asm
    {
        clc
        addc (x, b), b
    }

    ; SUBTRACT WITH CARRY (borrow = !carry)

    subc #{val:u8}, a => ; overwrites B with ~val
    {
        newval = (!val)`8 ; Uses 1's complement, as carry flag is added for two's complement if no borrow
        asm {addc # newval, a}
    }

    ; overwrites B with value
    subc {zpaddr:u8}, a => 0x14 @ zpaddr
    subc {addr:u16}, a => 0x15 @ le(addr)
    subc ({addr:u16}, x), a =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x16 @ (addr >> 8)`8
    }
    subc (x, b), a => 0x17

    subc #{val:u8}, b => ; overwrites A with ~val
    {
        newval = (!val)`8 ; Uses 1's complement, as carry flag is added for two's complement if no borrow
        asm {addc # newval, b}
    }

    subc b, a => 0x1E

    ; SUBTRACT WITHOUT CARRY

    sub #{val:u8}, a => asm ; overwrites B with ~val
    {
        sec ; set carry (clear borrow)
        subc # val, a
    }

    ; overwrites B with value
    ; \/ *** ALSO VALID FOR {zpaddr:u8} (zp mode is selected within the asm block)***
    sub {addr:u16}, a => asm
    {
        sec
        subc addr, a
    }
    sub ({addr:u16}, x), a => asm
    {
        sec
        subc (addr, x), a
    }
    sub (x, b), a => asm
    {
        sec
        subc (x, b), a
    }

    sub #{val:u8}, b => asm ; overwrites A with ~val
    {
        sec ; set carry
        subc # val, b
    }

    sub b, a => asm
    {
        sec
        subc b, a
    }

    ; COMPARE (with underlying subtraction WITH CARRY) (Carry flag set : A>=(value - (!carry)), Zero flag set : A==(value - (!carry)) )

    ; overwrites B with value
    cmpc #{val:i8}, a => 0x44 @ val
    cmpc {addr:u16}, a => 0x45 @ le(addr)
    cmpc ({addr:u16}, x), a =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x46 @ (addr >> 8)`8
    }
    
    cmpc (x, b), a => 0x47

    cmpc b, a => 0x41

    ; overwrites B with value
    cmpc x, a => 0x42
    cmpc sp, a => 0x43

    ; COMPARE WITHOUT CARRY (Carry flag set : A>=value, Zero flag set : A==value)

    ; overwrites B with value
    cmp #{val:i8}, a => asm
    {
        sec
        cmpc # val, a
    }
    cmp {addr:u16}, a => asm
    {
        sec
        cmpc addr, a
    }
    cmp ({addr:u16}, x), a => asm
    {
        sec
        cmpc (addr, x), a
    }
    cmp (x, b), a => asm
    {
        sec
        cmpc (x, b), a
    }

    cmp b, a => asm
    {
        sec
        cmpc b, a
    }

    ; overwrites B with value
    cmp x, a => asm
    {
        sec
        cmpc x, a
    }
    cmp sp, a => asm
    {
        sec
        cmpc sp, a
    }

    ; BITWISE OR

    ; overwrites B with value
    or #{val:u8}, a => 0x54 @ val
    or {addr:u16}, a => 0x55 @ val
    or ({addr:u16}, x), a =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x56 @ (addr >> 8)`8
    }
    or (x, b), a => 0x57

    or b, a => 0x53

    ; BITWISE AND

    ; overwrites B with value
    and #{val:u8}, a => 0x64 @ val
    and {addr:u16}, a => 0x65 @ le(addr)
    and ({addr:u16}, x), a =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x66 @ (addr >> 8)`8
    }
    and (x, b), a => 0x67

    and b, a => 0x63

    ; ROTATE (left only) WITH CARRY

    rolc a => 0x0E ; overwrites B with A
    rolc b => 0x0F ; overwrites A with B

    ; overwrites A and B with value
    rolc {addr:u16} => 0x05 @ le(addr)
    rolc ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x06 @ (addr >> 8)`8
    }
    rolc (x, b) => 0x07

    ; ROTATE (left only), insert given bit, CARRY OUT ONLY

    ; overwrites B with A
    rol a, 0 => asm
    {
        clc ; clear carry
        rolc a
    }
    rol a, 1 => asm
    {
        sec ; clear carry
        rolc a
    }

    ; overwrites A with B
    rol b, 0 => asm
    {
        clc ; clear carry
        rolc b
    }
    rol b, 1 => asm
    {
        sec ; clear carry
        rolc b
    }

    ; overwrites A and B with value
    rol {addr:u16}, 0 => asm
    {
        clc ; clear carry
        rolc addr
    }
    rol {addr:u16}, 1 => asm
    {
        sec ; clear carry
        rolc addr
    }
    rol ({addr:u16}, x), 0 => asm
    {
        clc ; clear carry
        rolc (addr, x)
    }
    rol ({addr:u16}, x), 1 => asm
    {
        sec ; clear carry
        rolc (addr, x)
    }
    rol (x, b), 0 => asm
    {
        clc ; clear carry
        rolc (x, b)
    }
    rol (x, b), 1 => asm
    {
        sec ; clear carry
        rolc (x, b)
    }


    ; ROTATE (left only), circular

    ; overwrites B with #0
    rolcirc a => asm
    {
        rol a, 0 ; rotate left, insert 0 on right
        addc #0, a ; add #0 with carry (move carry into LSB)
    }

    ; overwrites A with #0
    rolcirc b => asm
    {
        rol b, 0 ; rotate left, insert 0 on right
        addc #0, b ; add #0 with carry (move carry into LSB)
    }

    ; JUMP

    jsr {addr:u16} => 0x0C @ le(addr)
    rts => 0x5B

    jmp {addr:u16} => 0x1C @ le(addr)
    jmp ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x1D @ (addr >> 8)`8
    }
    jmp (x, b) => 0x2B

    jc {addr:u16} => 0x2C @ le(addr)
    jc ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x2D @ (addr >> 8)`8
    }

    jnc {addr:u16} => 0x3C @ le(addr)
    jnc ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x3D @ (addr >> 8)`8
    }

    jz {addr:u16} => 0x4C @ le(addr)
    jz ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x4D @ (addr >> 8)`8
    }

    jnz {addr:u16} => 0x5C @ le(addr)
    jnz ({addr:u16}, x) =>
    {
        assert((addr & 0xFF) == 0x00) ; make sure addr is a page start to index with X adequately

        0x5D @ (addr >> 8)`8
    }
}

#bankdef ram
{
    #addr 0x0000
    #size 0x8000
    ; no #outp -> not writeable
}

#bankdef rom
{
    #addr 0x8000
    #size 0x8000
    #outp 0x0000*8
}