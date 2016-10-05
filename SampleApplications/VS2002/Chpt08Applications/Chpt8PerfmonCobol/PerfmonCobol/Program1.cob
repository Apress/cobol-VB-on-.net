000010 IDENTIFICATION DIVISION.
000020* This is an example of how the CLR
000030* actively performs memory management.
000040 PROGRAM-ID. MAIN.
000050 ENVIRONMENT DIVISION.
000060 CONFIGURATION SECTION.
000070 REPOSITORY.
000080* .NET Framework Classes
000090     CLASS SYS-INT64 AS "System.Int64"
000100     CLASS PERFCOUNTER AS "System.Diagnostics.PerformanceCounter"
000110     PROPERTY PROP-CategoryName AS "CategoryName"
000120     PROPERTY PROP-CounterName AS "CounterName"
000130     PROPERTY PROP-MachineName AS "MachineName"
000140     PROPERTY PROP-InstanceName AS "InstanceName"
000150     PROPERTY PROP-RawValue AS "RawValue".
000160*
000170 DATA DIVISION.
000180 WORKING-STORAGE SECTION.
000190   77 PERFCOUNTER_Obj OBJECT REFERENCE PERFCOUNTER.
000200   77 myLong OBJECT REFERENCE SYS-INT64.
000210   77 My_String PIC X(20).
000220   77 myString1 PIC X(40) VALUE "This is an example of creating Garbage".
000230   77 i PIC S9(9) COMP-5.
000240* Set this variable to the number of times to process the loop
000250   77 maxInt PIC S9(9) COMP-5 VALUE 99999.
000260   
000270   01 NULL-X PIC X(1).
000280 LINKAGE SECTION.
000290
000300 PROCEDURE DIVISION.
000310
000320* Set Properties of PerformanceCouner Class
000330     INVOKE PERFCOUNTER "NEW" RETURNING PERFCOUNTER_Obj
000340     SET PROP-CategoryName OF PERFCOUNTER_Obj TO ".NET CLR Memory"
000350     SET PROP-CounterName OF PERFCOUNTER_Obj TO "# Bytes in all Heaps"
000360     SET PROP-MachineName OF PERFCOUNTER_Obj TO "."
000370     SET PROP-InstanceName OF PERFCOUNTER_Obj TO "PerfmonCobol"
000380     
000390     SET myLong to PROP-RawValue OF PERFCOUNTER_Obj
000400     INITIALIZE My_String 
000410     SET My_String to myLong::"ToString"
000420     
000430     DISPLAY "Begin Performance Monitor COBOL Example"
000440     DISPLAY " "
000450     DISPLAY "1St Performance Montitor Reading: " My_String
000460     DISPLAY " "
000470     DISPLAY "Warning: This loop will run for a long time."
000480     DISPLAY "!! Depending on the Value of the maxInt variable !! "
000490     DISPLAY "I suggest that you let it run for while"
000500     DISPLAY "at the same time, you can View the Perfmon Tool info."
000510     DISPLAY "You can either let the loop run and end normally or"
000520     DISPLAY "you can manually terminate the sample application"
000530     DISPLAY "by CLOSING the opened console window."
000540     DISPLAY " "
000550     DISPLAY "Please Prepare your Perfmon window as follows:"
000560     DISPLAY "Performance Object = .NET CLR Memory"
000570     DISPLAY "Counter = # Bytes in all Heaps"
000580     DISPLAY "Machine Name = Local computer"
000590     DISPLAY "Instance Name = PerfmonVB and/or PerfmonCobol"
000600     DISPLAY " "
000610     DISPLAY "Enter X and Press Enter to Resume Sample Application."
000620     ACCEPT NULL-X.
000630     
000640     PERFORM VARYING i 
000650		FROM 0 BY 1 UNTIL i >= maxInt
000660		   MOVE "This String had been modified." TO myString1
000670		   SET myLong to PROP-RawValue OF PERFCOUNTER_Obj
000680		   INITIALIZE My_String 
000690		   SET My_String to myLong::"ToString"
000700		   Display "Allocated Heap: " My_String
000710     END-PERFORM
000720
000730     DISPLAY "The loop has completed. Enter X and Press Enter to Exit.".
000740     ACCEPT NULL-X. 
000750
000760 END PROGRAM  MAIN.