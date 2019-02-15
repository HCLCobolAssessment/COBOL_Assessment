       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program2.
       AUTHOR.  HCL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 xStr PIC X(50) VALUE "Hii Th All is is the mainframe".
       01 aNum PIC 9(2) VALUE 0.
       01 bNum PIC 9(2) VALUE 0.
       01 yStr PIC X(07) VALUE 'HCLWORLD'.
       01 cNum PIC X(30).
       01 str1 PIC A(16) VALUE 'HI PUPS COMING..'.
       01 str2 PIC A(7) VALUE 'WELCOME'.
       01 str3 PIC A(3) VALUE 'TO '.
       01 dCount PIC 99 VALUE 20.
       01 str4 PIC A(30) VALUE 'MAINFRAME'.    
       01 SPLIT1 PIC X(3).
       01 SPLIT2 PIC X(4).
       01 SPLIT3 PIC X(7).	   

       PROCEDURE DIVISION.
       DISPLAY 'hi hi bye, world'.
       DISPLAY "Task1 = " xStr(9:3)
              *> count the number of chars in string, store in aNum     
              *>INSPECT yStr TALLYING aNum FOR ALL CHARACTERS.
              DISPLAY "aNum : "aNum.
              *> count just the A characters
              INSPECT yStr TALLYING bNum FOR ALL 'L'.
              DISPLAY "bNum : "bNum.
              *> replace A chars with X in strings
              DISPLAY "OLD STRING : "yStr.
              INSPECT yStr REPLACING ALL 'L' BY 'X'.
              DISPLAY "NEW STRING : "yStr.
              DISPLAY "HAIIIII".
              *> string concatenate
              STRING str2 DELIMITED BY SIZE
              str3 DELIMITED BY SPACE
              str4 DELIMITED BY SIZE
              INTO cNum
              WITH POINTER dCount
              ON OVERFLOW DISPLAY 'OVERFLOW!'
              END-STRING.
              DISPLAY 'WS-STRING : 'cNum.
              DISPLAY 'WS-COUNT : 'dCount.
              *> string split
              UNSTRING str1 DELIMITED BY SPACE
              INTO SPLIT1, SPLIT2, SPLIT3
              END-UNSTRING.
              DISPLAY 'SPLIT1 : 'SPLIT1.
              DISPLAY 'SPLIT2 : 'SPLIT2.
              DISPLAY 'SPLIT3 : 'SPLIT3.
       STOP RUN.
