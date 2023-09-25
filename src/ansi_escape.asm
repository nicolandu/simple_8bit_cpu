#once

#include "instructions.asm"

#ruledef
{
    ANSI_CLEAR_SCREEN => asm
    {
        out # "\x1B"
        out # "["
        out # "2"
        out # "J"
    }

    ANSI_CURSOR_HOME => asm
    {
        out # "\x1B"
        out # "["
        out # "H"
    }
    
    ANSI_CURSOR_HIDE => asm
    {
        out # "\x1B"
        out # "["
        out # "?"
        out # "2"
        out # "5"
        out # "l"
    }

    ANSI_CURSOR_SHOW => asm
    {
        out # "\x1B"
        out # "["
        out # "?"
        out # "2"
        out # "5"
        out # "h"
    }





    ANSI_RESET_COLOR => asm
    {
        out # "\x1B"
        out # "["
        out # "0"
        out # "m"
    }

    ANSI_BLACK => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "0"
        out # "m"
    }

    ANSI_RED => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "1"
        out # "m"
    }

    ANSI_GREEN => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "2"
        out # "m"
    }

    ANSI_YELLOW => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "3"
        out # "m"
    }

    ANSI_BLUE => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "4"
        out # "m"
    }

    ANSI_BLUE => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "5"
        out # "m"
    }
    
    ANSI_MAGENTA => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "6"
        out # "m"
    }
    
    ANSI_WHITE => asm
    {
        out # "\x1B"
        out # "["
        out # "3"
        out # "7"
        out # "m"
    }
}
