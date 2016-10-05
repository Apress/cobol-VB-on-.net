'This is an example of how the CLR
'actively performs memory management.

Module Module1

	Sub Main()

		Dim i As Int32

		'* Set Properties of PerformanceCouner Class
		Dim myCounter As New System.Diagnostics.PerformanceCounter()
		With myCounter
			.CategoryName = ".NET CLR Memory"
			.CounterName = "# Bytes in all Heaps"
			.MachineName = "."
			.InstanceName = "PerfmonVB"
		End With

		'Set this variable to the number of times to process the loop
		Dim maxInt As Int32 = 99999

		Console.WriteLine("Begin Performance Monitor VB Example")
		Console.WriteLine(String.Empty)
		Console.WriteLine("1St Performance Montitor Reading: " & _
		myCounter.RawValue.ToString())
		Console.WriteLine(" ")
		Console.WriteLine("Warning: This loop will run for a long time.")
		Console.WriteLine("!! Depending on the Value of the maxInt variable !! ")
		Console.WriteLine("I suggest that you let it run for while")
		Console.WriteLine("at the same time, you can View the Perfmon Tool info.")
		Console.WriteLine("You can either let the loop run and end normally or")
		Console.WriteLine("you can manually terminate the sample application")
		Console.WriteLine("by CLOSING the opened console window.")
		Console.WriteLine(" ")
		Console.WriteLine("Please Prepare your Perfmon window as follows:")
		Console.WriteLine("Performance Object = .NET CLR Memory")
		Console.WriteLine("Counter = # Bytes in all Heaps")
		Console.WriteLine("Machine Name = Local computer")
		Console.WriteLine("Instance Name = PerfmonVB and/or PerfmonCobol")
		Console.WriteLine(" ")
		Console.WriteLine("Then Press Enter to Resume Sample Application.")
		Console.ReadLine()

		Dim myString1 As String = "This is an example of creating Garbage"
		For i = 0 To maxInt
			myString1 = "This String had been modified."
			Console.WriteLine("Allocated Heap: " & _
			myCounter.RawValue.ToString())
		Next
		Console.WriteLine("The loop has completed. Press Enter to Exit.")
		Console.ReadLine()
	End Sub

End Module
