Module Module1

    Sub Main()
        '*
        '*** Declare Data Items using .NET Data Types
        '*
        Dim MYString As System.String
        Dim MYInteger As System.Int32
        Dim MYBoolean As System.Boolean
        '*
        '*** Declare Data Items with Visual Basic.NET Data Types
        '*
        Dim MyIndex As Integer
        Dim MySecondIndex As Integer
        Dim MyAccum As Integer
        Dim MyFlag As Boolean
        Dim systemDate As Date
        Dim MyFixedLengthString As String
        '* 
        '*** Demonstrate creation of String Array
        '*
        Dim MonthValues() As String = _
        {"January", "February", "March", _
        "April", "May", "June", _
        "July", "August", "September", _
        "October", "November", "December"}
        '*
        '*** Demonstrate Intrinsic Function accessing System Date
        '*
		systemDate = Now
	
        Console.WriteLine("Today is " & systemDate.ToShortDateString)
        '*
        '*** Demonstrate Booleans, Constants, and Conditional/Computational Logic
        '*
        Do Until MyFlag = True
            MyIndex += 1
            If MyIndex > 12 Then
                MYBoolean = True
                MyFlag = MYBoolean
            End If
        Loop
        If MyFlag Then
            MYString = "The Boolean is now set to TRUE"
            MyFixedLengthString = MYString
            Console.WriteLine(MyFixedLengthString)
        End If
        '*
        '*** Demonstrate usage Conditional and Computational Logic
        '*
        For MySecondIndex = 1 To MyIndex
            MyAccum = MySecondIndex + 1
        Next MySecondIndex
        MYInteger = MyAccum
        '*
        '*** Demonstrate Intrinsic Functions, Conditional/Computational Logic
        '*
        MyIndex = 1
        MyFixedLengthString = String.Empty
        Dim x As Int32
        For x = 0 To 11
            Select Case MonthValues(x)
                Case "December", "January", "February"
					Console.WriteLine _
					(MyFixedLengthString.Concat(MonthValues(x), _
					" is ", "Winter"))
                Case "March", "April", "May"
					Console.WriteLine _
					(MyFixedLengthString.Concat(MonthValues(x), _
					" is ", "Spring"))
                Case "June", "July", "August"
					Console.WriteLine _
					(MyFixedLengthString.Concat(MonthValues(x), _
					" is ", "Summer"))
                Case "September", "October", "November"
					Console.WriteLine _
					(MyFixedLengthString.Concat(MonthValues(x), _
					" is ", "Autumn"))
            End Select
        Next
        Console.WriteLine("Press Enter to Exit")
        Console.ReadLine()
    End Sub
End Module
