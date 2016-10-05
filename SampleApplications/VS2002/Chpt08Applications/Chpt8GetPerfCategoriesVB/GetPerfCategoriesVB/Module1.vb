'This is an example of how to retreive
'the Performance Categories

Module Module1

	Sub Main()

		Dim myCounterCategories As New _
		System.Diagnostics.PerformanceCounterCategory()
		Dim x As Array = myCounterCategories.GetCategories()

		For Each myCounterCategories In x
			Console.WriteLine(myCounterCategories.CategoryName)
		Next

		Console.WriteLine("Press Enter to Exit.")
		Console.ReadLine()
	End Sub

End Module
