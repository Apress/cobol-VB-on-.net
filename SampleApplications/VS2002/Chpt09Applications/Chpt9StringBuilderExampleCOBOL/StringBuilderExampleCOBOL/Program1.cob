000010 IDENTIFICATION DIVISION.
000020* This is an example of how traditional String
000030* Concatenation differs from using the 
000040* .NET StringBuilder Class for Concatenation.
000050 PROGRAM-ID. MAIN.
000060 ENVIRONMENT DIVISION.
000070 CONFIGURATION SECTION.
000080 REPOSITORY.
000090* .NET Framework Classes
000100     CLASS SYS-ENVIRONMENT_Obj AS "System.Environment"
000110     CLASS SYS-STRINGBUILDER AS "System.Text.StringBuilder"
000120     PROPERTY PROP-TickCount AS "TickCount".
000130*
000140 DATA DIVISION.
000150 WORKING-STORAGE SECTION.
000160   77 sb OBJECT REFERENCE SYS-STRINGBUILDER.
000170   77 sb1 OBJECT REFERENCE SYS-STRINGBUILDER.
000180   77 i PIC S9(9) COMP-5.
000190   77 ibeg PIC S9(9) COMP-5.
000200   77 myStartTick PIC S9(9) COMP-5.
000210   77 myFinishTick PIC S9(9) COMP-5.
000220   77 myComputedTick PIC S9(9) COMP-5.
000230   77 myDisplayTick PIC Z(9).
000240   77 myString1 PIC X(430000).
000250   01 NULL-X PIC X(1).
000260 LINKAGE SECTION.
000270
000280 PROCEDURE DIVISION.
000290     
000300     DISPLAY "Begin String Builder Example."
000310     DISPLAY " "
000320     
000330* Start logic for String (FUNCTION) Compare 
000340     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000350     MOVE "I am creating .NET Garbage to be Collected" TO myString1
000360     MOVE 50 to ibeg
000370     PERFORM VARYING i 
000380       FROM 0 BY 1 UNTIL i >= 9999
000390         STRING " * One Piece of Garbage to be collected * " 
000400                DELIMITED BY SIZE
000410                INTO myString1
000420                WITH POINTER ibeg
000430         END-STRING
000440     END-PERFORM
000450     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000460        
000470     DISPLAY "Milliseconds for traditional String concatenation: "
000480     COMPUTE myComputedTick = (myFinishTick - myStartTick)
000490     MOVE myComputedTick to myDisplayTick
000500     DISPLAY myDisplayTick
000510 
000520* Start logic for StringBuilder Compare using Default size of 16
000530     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000540     INVOKE SYS-STRINGBUILDER "NEW"
000550         RETURNING sb.
000560     INVOKE sb "Append"
000570         USING BY VALUE "I am creating .NET Garbage to be Collected : "
000580         RETURNING sb.
000590
000600     PERFORM VARYING i 
000610		 FROM 0 BY 1 UNTIL i >= 9999
000620		   INVOKE sb "Append"
000630			USING BY VALUE " * One Piece of Garbage to be collected * "
000640			RETURNING sb
000650     END-PERFORM
000660     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000670        
000680     DISPLAY "Milliseconds for StringBuilder - using default Size: "
000690     COMPUTE myComputedTick = (myFinishTick - myStartTick)
000700     MOVE myComputedTick to myDisplayTick
000710     DISPLAY myDisplayTick
000720
000730* Start logic for StringBuilder(500) Compare
000740     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000750     INVOKE SYS-STRINGBUILDER "NEW"
000760         USING BY VALUE 500
000770         RETURNING sb1.
000780     INVOKE sb1 "Append"
000790         USING BY VALUE "I am creating .NET Garbage to be Collected : "
000800         RETURNING sb1.
000810
000820     PERFORM VARYING i 
000830		 FROM 0 BY 1 UNTIL i >= 9999
000840		   INVOKE sb1 "Append"
000850			USING BY VALUE " * One Piece of Garbage to be collected * "
000860			RETURNING sb1
000870     END-PERFORM
000880     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000890        
000900     DISPLAY "Milliseconds for StringBuilder - initialized Size : "
000910     COMPUTE myComputedTick = (myFinishTick - myStartTick)
000920     MOVE myComputedTick to myDisplayTick
000930     DISPLAY myDisplayTick
000940     
000950     SET SB TO NULL
000960     SET SB1 TO NULL
000970
000980     DISPLAY "Enter X and Press Enter to Exit.".
000990     ACCEPT NULL-X. 
001000
001010 END PROGRAM  MAIN.