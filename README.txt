   ooo        ooooo  .o8                           o8o            
   `88.       .888' "888                           `"'            
    888b     d'888   888oooo.   .oooo.    .oooo.o oooo   .ooooo.  
    8 Y88. .P  888   d88' `88b `P  )88b  d88(  "8 `888  d88' `"Y8 
    8  `888'   888   888   888  .oP"888  `"Y88b.   888  888       
    8    Y     888   888   888 d8(  888  o.  )88b  888  888   .o8 
   o8o        o888o  `Y8bod8P' `Y888""8o 8""888P' o888o `Y8bod8P'
   --------------------------------------------------------------
         Small BASIC interpreter written in C by matthilde
                 Licensed under the WTFPL license

Here I come with yet another project done in a few hours.
Mbasic is a very simple BASIC dialect that fits in ~200 lines of C99.

TABLE OF CONTENTS
=================

 * Building and Usage
 * Files
 * Programming in Mbasic
   * Syntax
   * Commands Reference
 * Licensing

BUILDING AND USAGE
==================

 COMPILING: run `make` or `cc -std=c99 basic.c -o basic`
 USAGE:     mbasic [FILENAME]
            if no FILENAME is specified, it will read from stdin.

FILES
=====

 Makefile         - the makefile
 README.txt       - what you are currently reading
 basic.c          - the BASIC interpreter
 guess_number.bas - little "Guess the number" game

PROGRAMMING IN MBASIC
=====================

SYNTAX
------

 The syntax is fairly simple
     ; This is a comment
     10 PRINT "This is a line of code"
     ; Arguments are seperated with whitespace
     20 PRINT "1 + 1 = " 2+2
     ; That means math expressions cannot have whitespace

 * Comments cannot be at the end of a line of code. (too lazy to
   implement that lmao).
 * All lines must start with a digit that defines the line of code.
 * Math expressions does not support parentheses.
 * There is a special variable in math expression called `RANDOM` which
   gives a random integer between 0 and RAND_MAX (whatever the value
   of it is in your C compiler).
 * Variables can only hold integers, the quoted strings can only be
   used in the PRINT command.

COMMANDS REFERENCE
------------------

 The programming language has 8 commands:

     PRINT args ... - Prints the specified args
     INPUT varname  - Ask the user for a number and store it in the
                      specified variable
     VAR varmame v  - varname = v
     IF cond loc... - if cond>0 then run "loc"
     GOTO line      - Go to the specified line
     GOSUB line     - Go to subroutine at specified line
     RET            - Return from subroutine
     END            - Stops the program

LICENSING
=========

This program is licensed under the WTFPL.
