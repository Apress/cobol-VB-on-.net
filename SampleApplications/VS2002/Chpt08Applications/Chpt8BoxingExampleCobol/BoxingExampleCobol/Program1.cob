000010 IDENTIFICATION DIVISION.
000020* This is an example of IMPLICITLY BOXING a Structure
000030 PROGRAM-ID. MAIN.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 REPOSITORY.
000070* .NET Framework Classes
000080	   CLASS SYS-OBJECT AS "System.Object".
000090*
000100 DATA DIVISION.
000110 WORKING-STORAGE SECTION.
000120 
000130* Declare Data Items with COBOL.NET Data Types
000140* this Data Type maps to a Structure/Value Type.
000150* Initialize with the value of 9999 (Hex x'270F).
000160* The myFirstInt variable is allocated on the Stack
000170* does not get Garbage Collected
000180
000190   77  myFirstInt PIC S9(9) USAGE IS COMP-5 Value 9999.
000200* Declare Data Items using .NET Data Types
000210* that References an Object
000220* The myobject variable is allocated memory on the HEAP 
000230* and will be Garbage Collected 
000240
000250   77  myobject	OBJECT REFERENCE SYS-OBJECT.
000260   
000270   01 NULL-X PIC X(1).
000280 LINKAGE SECTION.
000290*
000300 PROCEDURE DIVISION.
000310* Reference the Value of the Value Type
000320     SET myobject to myFirstInt.
000330     
000340     DISPLAY "Use ILDASM to view the BOXing of the Structure"
000350     DISPLAY "Enter X and Press Enter to Exit.".
000360     ACCEPT NULL-X. 
000370
000380 END PROGRAM  MAIN.