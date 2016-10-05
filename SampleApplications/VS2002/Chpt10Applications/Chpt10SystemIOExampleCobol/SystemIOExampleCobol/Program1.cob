000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. MAIN.
000030 ENVIRONMENT DIVISION.
000040 CONFIGURATION SECTION.
000050 REPOSITORY.
000060* .NET Framework Classes
000070*    Declare a StreamWriter & StreamReader Object
000080*    which will inherit from 
000090*    System.IO.TextWriter & System.IO.TextReader    
000100     CLASS Sys-StreamWriter AS "System.IO.StreamWriter"
000110     CLASS Sys-StreamReader AS "System.IO.StreamReader"
000120     CLASS Sys-Integer      AS "System.Int32"
000130     CLASS Sys-String       AS "System.String".
000140*
000150 DATA DIVISION.
000160 WORKING-STORAGE SECTION.
000170   77 mySys-StreamWriter OBJECT REFERENCE Sys-StreamWriter.
000180   77 mySys-StreamReader OBJECT REFERENCE Sys-StreamReader.
000190   77 mySys-String  OBJECT REFERENCE Sys-String.
000200   77 mySys-Integer OBJECT REFERENCE Sys-Integer.
000210   77 myDisplayString PIC x(30).
000220   77 myInt PIC S9(9) COMP-5.
000230   77 myOtherInt PIC S9(9) COMP-5.
000240   01 NULL-X PIC X(1).
000250 PROCEDURE DIVISION.
000260 
000270	   Perform 1000-WriteMyData.
000280     Perform 2000-ReadMyData.
000290     Stop Run.
000300   1000-WriteMyData.
000310   
000320*     Explicitly Create StreamWriter Object with Constructor
000330      INVOKE Sys-StreamWriter "NEW"
000340      USING BY VALUE "myTextFile.txt"
000350      RETURNING  mySys-StreamWriter
000360         
000370      PERFORM VARYING myInt
000380       FROM 0 BY 1 UNTIL myInt >= 4
000390         INVOKE mySys-StreamWriter "WriteLine"
000400           USING BY VALUE "This is a Test"
000410      END-PERFORM.
000420*     Close the StreamWriter and file
000430      INVOKE mySys-StreamWriter "Close".
000440   2000-ReadMyData.
000450   
000460*     Explicitly Create StreamReader Object with Constructor
000470      INVOKE Sys-StreamReader "NEW"
000480      USING BY VALUE "myTextFile.txt"
000490      RETURNING  mySys-StreamReader
000500         
000510      PERFORM UNTIL myOtherInt = -1
000520         SET mySys-String TO mySys-StreamReader::"ReadLine" ()
000530         SET myDisplayString TO mySys-String  
000540         DISPLAY myDisplayString
000550*    Read Until Reaching the End of the StreamReader
000560         SET mySys-Integer TO mySys-StreamReader::"Peek" ()
000570         SET myOtherInt to mySys-Integer
000580      END-PERFORM
000590*     Close the StreamWriter and file
000600      INVOKE mySys-StreamReader "Close".
000610
000620     DISPLAY "Enter X and Press Enter to Exit.".
000630     ACCEPT NULL-X.
000640 END PROGRAM MAIN.