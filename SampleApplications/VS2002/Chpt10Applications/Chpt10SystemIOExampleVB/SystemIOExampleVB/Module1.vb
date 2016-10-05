Module Module1
	Sub Main()
		Call WriteMyData()
		Call ReadMyData()
	End Sub

	Sub WriteMyData()

		'Declare a StreamWriter Object
		'which inherits System.IO.TextWriter
		Dim myStreamWriter As System.IO.StreamWriter
		'Return Value of File.CreateText Method = StreamWriter
		myStreamWriter = _
		System.IO.File.CreateText("myTextFile.txt")
		Dim myInt As System.Int32
		For myInt = 0 To 3
			myStreamWriter.WriteLine("This is a Test")
		Next
		'Close the StreamWriter and file
		myStreamWriter.Close()
	End Sub

	Sub ReadMyData()
		'Declare a StreamReader Object
		'which inherits System.IO.TextReader
		Dim myStreamReader As System.IO.StreamReader
		'Return Value of File.OpenText Method = StreamReader
		myStreamReader = System.IO.File.OpenText("myTextFile.txt")
		'Read Until Reaching the End of the StreamReader
		Dim myReadString As System.String
		Do Until myStreamReader.Peek = -1
			myReadString = myStreamReader.ReadLine()
			Console.WriteLine(myReadString)
		Loop
		'Close the StreamReader and file
		myStreamReader.Close()
		Console.WriteLine("Press Enter to Exit.")
		Console.ReadLine()
	End Sub
End Module
