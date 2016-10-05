Module Module1

	Sub Main()
		'This is an example of IMPLICITLY BOXING a Structure

		'Declare a Structure/Value Type. 
		'Initialize with the value of 9999 (Hex x'270F)
		'The myFirstInt variable is allocated on the Stack
		'and does not get Garbage Collected
		Dim myFirstInt As Integer = 9999

		'Declare a Reference Type Object
		'Reference the Value of the Value Type
		'The myobject variable is allocated memory on the HEAP
		'and will be Garbage Collected
		Dim myobject As Object = myFirstInt

		Console.WriteLine _
		("Use ILDASM to view the BOXing of the Structure")
		Console.WriteLine _
		("Press Enter to Exit")
		Console.ReadLine()

	End Sub

End Module



