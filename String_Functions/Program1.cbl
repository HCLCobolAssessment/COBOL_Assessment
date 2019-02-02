       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       AUTHOR.  LEEDAa.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 xStr PIC X(50) VALUE "Hi All This is the first source string".
       01 aNum PIC 9(2) VALUE 0.
       01 bNum PIC 9(2) VALUE 0.
       01 yStr PIC X(25) VALUE 'ABCDADADADABVDFDFFAF'.
       01 cNum PIC A(30).
       01 str1 PIC A(15) VALUE 'HCL Technologies'.
       01 str2 PIC A(7) VALUE 'WELCOME'.
       01 str3 PIC A(7) VALUE 'TO '.
       01 dCount PIC 99 VALUE 1.
       01 str4 PIC A(30) VALUE 'HCL TECHNOLOGIES'.                      

       PROCEDURE DIVISION.
       DISPLAY 'Hello, world'.
       DISPLAY "Task1 = " xStr(9:3)
              *> count the number of chars in string, store in aNum     
              *>INSPECT yStr TALLYING aNum FOR ALL CHARACTERS.
              DISPLAY "aNum : "aNum.
              *> count just the A characters
              INSPECT yStr TALLYING bNum FOR ALL 'A'.
              DISPLAY "bNum : "bNum.
              *> replace A chars with X in strings
              DISPLAY "OLD STRING : "yStr.
              INSPECT yStr REPLACING ALL 'A' BY 'X'.
              DISPLAY "NEW STRING : "yStr.
              *> string concatenate
              STRING str2 DELIMITED BY SIZE
              str3 DELIMITED BY SPACE
              str1 DELIMITED BY SIZE
              INTO cNum
              WITH POINTER dCount
              ON OVERFLOW DISPLAY 'OVERFLOW!'
              END-STRING.
              DISPLAY 'WS-STRING : 'cNum.
              DISPLAY 'WS-COUNT : 'dCount.
              *> string split
              UNSTRING str4 DELIMITED BY SPACE
              INTO str3, str2, str1
              END-UNSTRING.
              DISPLAY 'WS-STR1 : 'str1.
              DISPLAY 'WS-STR2 : 'str2.
              DISPLAY 'WS-STR3 : 'str3.
       STOP RUN.
