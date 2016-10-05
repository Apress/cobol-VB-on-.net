000010 IDENTIFICATION DIVISION.
000020* This is an example of how the CLR Promotes Objects
000030* from one HEAP Generation to the next - as an object ages
000040 PROGRAM-ID. MAIN.
000050 ENVIRONMENT DIVISION.
000060 CONFIGURATION SECTION.
000070 REPOSITORY.
000080* .NET Framework Classes
000090	   CLASS SYS-OBJECT AS "System.Object"
000100     CLASS SYS-INTEGER AS "System.Int32"
000110     CLASS GC AS "System.GC".
000120*
000130 DATA DIVISION.
000140 WORKING-STORAGE SECTION.
000150   77 obj    OBJECT REFERENCE SYS-OBJECT.
000160   77 GC_OBJ OBJECT REFERENCE GC.
000170   77 My_Int OBJECT REFERENCE SYS-INTEGER.
000180   77 My_String PIC X(20).
000190   
000200   01 NULL-X PIC X(1).
000210 LINKAGE SECTION.
000220
000230 PROCEDURE DIVISION.
000240     
000250     DISPLAY "Begin Heap Generation COBOL.NET Example"
000260     DISPLAY " "
000270
000280* Instantiate Object from .NET Framework Classes
000290	   INVOKE SYS-OBJECT "NEW" RETURNING obj
000300                         
000310* Execute GC "GetGeneration" Method Using Inline Invoke syntax
000320     SET My_Int to GC::"GetGeneration" (obj)
000330* Execute ToString Method Using Inline Invoke syntax
000340     SET My_String to My_Int::"ToString"
000350     Display "HEAP Generation of obj BEFORE FIRST collection: " 
000360				My_String
000370    
000380* Manually Induce Garbage Collection on all Generations 
000390     INVOKE GC "Collect".
000400     
000410* Execute GC "GetGeneration" Method Using Inline Invoke  
000420     SET My_Int to GC::"GetGeneration" (obj)
000430* Execute ToString Method Using Inline Invoke syntax
000440     SET My_String to My_Int::"ToString"
000450     Display "HEAP Generation of obj AFTER FIRST collection: " 
000460				My_String
000470    
000480* Manually Induce Garbage Collection on all Generations 
000490     INVOKE GC "Collect".
000500     
000510* Execute GC "GetGeneration" Method Using Inline Invoke  
000520     SET My_Int to GC::"GetGeneration" (obj)
000530* Execute ToString Method Using Inline Invoke syntax
000540     SET My_String to My_Int::"ToString"
000550     Display "HEAP Generation of obj AFTER SECOND collection: " 
000560				My_String
000570    
000580* Remove Object reference
000590* This will make it eligible for Garbage Collection
000600     SET obj to NULL
000610     
000620* Manually Induce Garbage Collection on all Generations 
000630     INVOKE GC "Collect"
000640     
000650* Optionally, I could have induced a collection
000660* specifically on the generation # containing my obj.
000670* Using the syntax "GC.Collect USING BY VALUE var1" 
000680* with var1 having the value of 1, to target generation 1
000690     
000700     DISPLAY "Enter X and Press Enter to Exit.".
000710     ACCEPT NULL-X. 
000720
000730 END PROGRAM  MAIN.