Module Module1

	Sub Main()
		Dim i As Int32
		Dim myStartTick As Int32
		Dim myFinishTick As Int32

		Console.WriteLine("Begin String Builder Example")
		Console.WriteLine(String.Empty)

		'Start logic for String Compare
		myStartTick = System.Environment.TickCount
		Dim myString1 As New String("I am creating .NET Garbage to be Collected")

		For i = 0 To 9999
			myString1 = myString1 & " * One Piece of Garbage to be collected * "
		Next

		myFinishTick = System.Environment.TickCount
		Console.WriteLine("Milliseconds for traditional String concatenation: ")
		Console.WriteLine(myFinishTick - myStartTick)

		'Start logic for StringBuilder Compare using Default size of 16
		myStartTick = System.Environment.TickCount
		Dim sb As New System.Text.StringBuilder()
		sb.Append("I am creating .NET Garbage to be Collected : ")
		For i = 0 To 9999
			sb.Append(" * One Piece of Garbage to be collected * ")
		Next

		myFinishTick = System.Environment.TickCount
		Console.WriteLine("Milliseconds for StringBuilder - using default Size: ")
		Console.WriteLine(myFinishTick - myStartTick)

		'Start logic for StringBuilder(500) Compare
		myStartTick = System.Environment.TickCount
		Dim sb1 As New System.Text.StringBuilder(500)
		sb1.Append("I am creating .NET Garbage to be Collected : ")
		For i = 0 To 9999
			sb1.Append(" * One Piece of Garbage to be collected * ")
		Next

		myFinishTick = System.Environment.TickCount
		Console.WriteLine("Milliseconds for StringBuilder - initialized Size")
		Console.WriteLine(myFinishTick - myStartTick)

		myString1 = Nothing
		sb = Nothing
		sb1 = Nothing

		Console.WriteLine("Press Enter to Exit")
		Console.ReadLine()

	End Sub

End Module
