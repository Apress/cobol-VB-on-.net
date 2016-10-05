000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. MAIN.
000030 ENVIRONMENT DIVISION.
000040 CONFIGURATION SECTION.
000050 REPOSITORY.
000060* .NET Framework Classes
000070	   CLASS SYS-INT16 AS "System.Int16"
000080	   CLASS SYS-INT32 AS "System.Int32"
000090	   CLASS SYS-DOUBLE AS "System.Double".
000100*
000110 DATA DIVISION.
000120 WORKING-STORAGE SECTION.
000130* Declare Data Items with COBOL.NET Data Types
000140   77  My-First-Number-Intrinsic	PIC S9(4) USAGE IS COMP-5.
000150   77  My-First-Number-Int8Demo  	PIC S9(5) USAGE IS COMP-5.    
000160   77  My-Second-Number-Intrinsic PIC S9(9) USAGE IS COMP-5. 
000170   77  My-Third-Number-Intrinsic	USAGE IS COMP-2.
000180* Declare Data Items using .NET Data Types
000190   77  My-First-Number-ObjectRef	OBJECT REFERENCE SYS-INT16.  
000200   77  My-Second-Number-ObjectRef OBJECT REFERENCE SYS-INT32. 
000210   77  My-Third-Number-ObjectRef	OBJECT REFERENCE SYS-DOUBLE.
000220   
000230   01 NULL-X PIC X(1).
000240 LINKAGE SECTION.
000250*
000260 PROCEDURE DIVISION.
000270* Move numeric literal to Data Item
000280     MOVE 32767 TO My-First-Number-Int8Demo.
000290     MOVE 32767 TO My-First-Number-Intrinsic.
000300* Commented out to shorten ILDASM output display. uncomment as needed.     
000310*     Display "Pic5 " My-First-Number-Int8Demo
000320*     Display "Pic4 " My-First-Number-Intrinsic
000330     
000340*     DISPLAY "Enter X and Press Enter to Exit.".
000350*     ACCEPT NULL-X. 
000360*
000370 END PROGRAM  MAIN.