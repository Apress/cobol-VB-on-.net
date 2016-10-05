000010* 'ValueTypeSampleCobol Console Application
000020 CLASS-ID. A-CLASS. 
000030 ENVIRONMENT DIVISION.
000040 CONFIGURATION SECTION.
000050 REPOSITORY.
000060*
000070* ADD References for .NET Framework Classes
000080
000090     CLASS SYS-ENVIRONMENT_Obj AS "System.Environment"
000100     PROPERTY PROP-TickCount AS "TickCount"
000110     
000120* ADD references for the Classes created in this Project
000130     CLASS mybarInt
000140     CLASS mybarStr.
000150       
000160 STATIC.
000170 PROCEDURE DIVISION.
000180 METHOD-ID. MAIN.
000190 DATA DIVISION.
000200 WORKING-STORAGE SECTION.
000210 01 OBJ OBJECT REFERENCE A-CLASS.
000220 PROCEDURE DIVISION.
000230     INVOKE A-CLASS "NEW" RETURNING OBJ.
000240 END METHOD MAIN.
000250 END STATIC.
000260 
000270 OBJECT.
000280 DATA DIVISION.
000290 WORKING-STORAGE SECTION.
000300 PROCEDURE DIVISION.
000310*
000320* The method below is known as the CONSTRUCTOR
000330 METHOD-ID. NEW.
000340 DATA DIVISION.
000350 WORKING-STORAGE SECTION.
000360 PROCEDURE DIVISION.
000370     INVOKE SELF "A-METHOD".
000380 END METHOD NEW.
000390* 
000400 METHOD-ID. A-METHOD IS PUBLIC.
000410 DATA DIVISION.
000420 WORKING-STORAGE SECTION.
000430* Misc Fields 
000440  77 myStartTick PIC S9(9) COMP-5.
000450  77 myFinishTick PIC S9(9) COMP-5.
000460  77 myComputedTick PIC S9(9) COMP-5.
000470  77 myDisplayTick PIC Z(9).
000480  77 i PIC S9(9) COMP-5.
000490  01 NULL-X PIC X(1).
000500 
000510*  NOTE: A Group Data Type is COBOL.NET's instrinsic support
000520*  for .NET Structures
000530
000540* Create my own Structure that contains a Int32 (equivalent)
000550  01 WS-myfooInteger_Test1.
000560     05 WS-myInt PIC S9(9) USAGE COMP-5.
000570  01 WS-myfooInteger_Test2.
000580     05 WS-myInt PIC S9(9) USAGE COMP-5.
000590
000600* Create my own Structure that contains a String
000610  01 WS-myfooString_Test1.
000620     05 WS-myString PIC X(30).
000630  01 WS-myfooString_Test2.
000640     05 WS-myString PIC X(30).
000650  
000660  01 mybarInt_Obj_Test1 OBJECT REFERENCE mybarInt.
000670  01 mybarInt_Obj_Test2 OBJECT REFERENCE mybarInt.
000680  01 mybarStr_Obj_Test1 OBJECT REFERENCE mybarStr.
000690  01 mybarStr_Obj_Test2 OBJECT REFERENCE mybarStr.
000700  
000710 LINKAGE SECTION.
000720 PROCEDURE DIVISION.
000730* 
000740     DISPLAY "Starting the ValueTypeSampleCobol Console Application."
000750     Display " "
000760     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000770     PERFORM VARYING i 
000780       FROM 0 BY 1 UNTIL i >= 999999
000790          MOVE 1 to WS-myfooInteger_Test1
000800          MOVE 2 to WS-myfooInteger_Test2
000810          MOVE WS-myfooInteger_Test1 to WS-myfooInteger_Test2
000820     END-PERFORM
000830     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000840        
000850    
000860     COMPUTE myComputedTick = (myFinishTick - myStartTick)
000870     MOVE myComputedTick to myDisplayTick
000880     DISPLAY "Total milliseconds for Integer Structures: " myDisplayTick 
000890	   Display " "	
000900
000910     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000920     PERFORM VARYING i 
000930       FROM 0 BY 1 UNTIL i >= 999999
000940          MOVE "This is the String" to WS-myfooString_Test1
000950          MOVE "This is the Second String" to WS-myfooString_Test2
000960          MOVE WS-myfooString_Test1 to WS-myfooString_Test2
000970     END-PERFORM
000980     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
000990        
001000     COMPUTE myComputedTick = (myFinishTick - myStartTick)
001010     MOVE myComputedTick to myDisplayTick
001020     DISPLAY "Total milliseconds for String Structures: " myDisplayTick 
001030     Display " "
001040
001050     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
001060     PERFORM VARYING i 
001070       FROM 0 BY 1 UNTIL i >= 999999
001080          INVOKE mybarInt "NEW" USING BY VALUE 1
001090			  RETURNING mybarInt_Obj_Test1
001100          INVOKE mybarInt "NEW" USING BY VALUE 2
001110			  RETURNING mybarInt_Obj_Test2
001120			SET mybarInt_Obj_Test2 TO mybarInt_Obj_Test1
001130     END-PERFORM
001140     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
001150      
001160     COMPUTE myComputedTick = (myFinishTick - myStartTick)
001170     MOVE myComputedTick to myDisplayTick
001180     DISPLAY "Total milliseconds for Reference -Int Objects: " myDisplayTick 
001190     Display " "
001200
001210     SET myStartTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
001220     PERFORM VARYING i 
001230       FROM 0 BY 1 UNTIL i >= 999999
001240          INVOKE mybarStr "NEW" USING BY VALUE "This is the String"
001250			  RETURNING mybarStr_Obj_Test1
001260          INVOKE mybarStr "NEW" USING BY VALUE "This is the Second String"
001270			  RETURNING mybarStr_Obj_Test2
001280			SET mybarStr_Obj_Test2 TO mybarStr_Obj_Test1
001290     END-PERFORM
001300     SET myFinishTick to PROP-TickCount of SYS-ENVIRONMENT_Obj.
001310        
001320     COMPUTE myComputedTick = (myFinishTick - myStartTick)
001330     MOVE myComputedTick to myDisplayTick
001340     DISPLAY "Total milliseconds for Reference - Str Objects: " myDisplayTick     
001350     Display " "
001360   
001370     Display "The Test is now complete.".
001380     DISPLAY "Enter X and Press Enter to Exit.".
001390     ACCEPT NULL-X.
001400     
001410 END METHOD A-METHOD.
001420*
001430 END OBJECT.
001440 END CLASS A-CLASS.