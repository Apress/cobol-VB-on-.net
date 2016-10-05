000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. MAIN.
000030 ENVIRONMENT DIVISION.
000040 CONFIGURATION SECTION.
000050 REPOSITORY.
000060*
000070*** .NET Framework Classes
000080*
000090     CLASS SYS-STRING AS "System.String"
000100     CLASS SYS-INTEGER AS "System.Int32"
000110     CLASS SYS-BOOLEAN AS "System.Boolean".
000120*
000130 DATA DIVISION.
000140 WORKING-STORAGE SECTION.
000150*
000160*** Declare Data Items using .NET Data Types
000170* 
000180 01 MY-String OBJECT REFERENCE SYS-STRING. 
000190 01 MY-Integer OBJECT REFERENCE SYS-INTEGER.
000200 01 MY-Boolean OBJECT REFERENCE SYS-BOOLEAN.
000210*
000220*** Declare Data Items with COBOL.NET Data Types
000230*
000240 01 My-Index PIC S9(9) COMP-5.
000250 01 My-SecondIndex PIC S9(9) COMP-5.
000260 01 My-Accum PIC S9(9) COMP-5.  
000270 01 My-Flag PIC 1 USAGE BIT.
000280    88 My-Flag-True      Value B'1'.
000290    88 My-Flag-False     Value B'0'.
000300 01 NULL-X PIC X(1).
000310 01 SystemDate.
000320    05 YYYY PIC 9999.
000330    05 MM   PIC 99.
000340    05 DD   PIC 99.
000350 01 My-FixedLengthString PIC X(50).
000360* 
000370*** Demonstrate creation of Table-Array
000380*
000390  01 MONTH-VALUES.
000400      05     PIC X(09) VALUE "January".
000410      05     PIC X(09) VALUE "February".
000420      05     PIC X(09) VALUE "March".
000430      05     PIC X(09) VALUE "April".
000440      05     PIC X(09) VALUE "May".
000450      05     PIC X(09) VALUE "June".
000460      05     PIC X(09) VALUE "July".
000470      05     PIC X(09) VALUE "August".
000480      05     PIC X(09) VALUE "September".
000490      05     PIC X(09) VALUE "October".
000500      05     PIC X(09) VALUE "November".
000510      05     PIC X(09) VALUE "December".
000520 01  MONTH-TABLE REDEFINES  MONTH-VALUES.
000530     05  MONTH-ITEMS OCCURS 12 TIMES.  
000540         10 MONTH-ITEM        PIC X(9).
000550 PROCEDURE DIVISION.
000560*
000570*** Demonstrate Intrinsic Function accessing System Date
000580*
000590     MOVE FUNCTION CURRENT-DATE TO SystemDate
000600     DISPLAY "Today is " SystemDate
000610
000620*
000630*** Demonstrate usage of Boolean fields, Constants, and Conditional and Computational Logic
000640*
000650     PERFORM UNTIL My-Flag = B"1"
000660		   ADD 1 TO My-Index
000670         IF My-Index > 12
000680             SET MY-Boolean to B"1"
000690             SET My-Flag to MY-Boolean
000700         END-IF
000710     END-PERFORM
000720     IF My-Flag-True Then
000730          SET MY-String to "The 88 Level Boolean is now set to TRUE"
000740          SET My-FixedLengthString to MY-String
000750          DISPLAY My-FixedLengthString
000760     END-IF
000770*
000780*** Demonstrate usage of Conditional and Computational Logic
000790*
000800     PERFORM VARYING My-SecondIndex 
000805		   FROM 0 BY 1 UNTIL My-SecondIndex = My-Index
000810         COMPUTE My-Accum = My-SecondIndex + 1
000820     END-PERFORM
000830     SET MY-Integer to My-Accum
000840*
000850*** Demonstrate usage of Intrinsic Functions, Conditional and Computational Logic
000860*
000870     MOVE 1 to My-Index
000880     INITIALIZE My-FixedLengthString
000890     PERFORM 12 TIMES   
000900         EVALUATE MONTH-ITEM (My-Index)
000910            WHEN "December" 
000920            WHEN "January"
000930            WHEN "February" 
000940                  STRING 
000950                        MONTH-ITEM (My-Index) DELIMITED BY " "
000960                        " " DELIMITED BY SIZE
000970                        "is" DELIMITED BY SIZE
000980                        " " DELIMITED BY SIZE
000990                        "Winter" DELIMITED BY SIZE
001000                        INTO My-FixedLengthString
001010                  END-STRING
001020                  DISPLAY My-FixedLengthString
001030                  INITIALIZE My-FixedLengthString
001040            WHEN "March" 
001050            WHEN "April"
001060            WHEN "May" 
001070                  STRING 
001080                        MONTH-ITEM (My-Index) DELIMITED BY " "
001090                        " " DELIMITED BY SIZE
001100                        "is" DELIMITED BY SIZE
001110                        " " DELIMITED BY SIZE
001120                        "Spring" DELIMITED BY SIZE
001130                        INTO My-FixedLengthString
001140                  END-STRING
001150                  DISPLAY My-FixedLengthString
001160                  INITIALIZE My-FixedLengthString
001170            WHEN "June" 
001180            WHEN "July"
001190            WHEN "August"
001200                  STRING 
001210                        MONTH-ITEM (My-Index) DELIMITED BY " "
001220                        " " DELIMITED BY SIZE
001230                        "is" DELIMITED BY SIZE
001240                        " " DELIMITED BY SIZE
001250                        "Summer" DELIMITED BY SIZE
001260                        INTO My-FixedLengthString
001270                  END-STRING
001280                  DISPLAY My-FixedLengthString
001290                  INITIALIZE My-FixedLengthString
001300            WHEN "September" 
001310            WHEN "October"
001320            WHEN "November"
001330                  STRING 
001340                        MONTH-ITEM (My-Index) DELIMITED BY " "
001350                        " " DELIMITED BY SIZE
001360                        "is" DELIMITED BY SIZE
001370                        " " DELIMITED BY SIZE
001380                        "Autumn" DELIMITED BY SIZE
001390                        INTO My-FixedLengthString
001400                  END-STRING
001410                  DISPLAY My-FixedLengthString
001420                  INITIALIZE My-FixedLengthString
001430         END-EVALUATE
001440         ADD 1 to My-Index
001450     END-PERFORM
001460     DISPLAY "Enter X and Press Enter to Exit.".
001470     ACCEPT NULL-X. 
001480*
001490 END PROGRAM MAIN.