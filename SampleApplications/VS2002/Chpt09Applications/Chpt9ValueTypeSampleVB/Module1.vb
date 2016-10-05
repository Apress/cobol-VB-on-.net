'ValueTypeSampleVB Console Application

'Create my own Public Structure
Public Structure myfooInteger
	Public myInt As System.Int32

	'Define a Constuctor Method
	Public Sub New(ByVal Input As Int32)
		Me.myInt = Input
	End Sub
End Structure

Public Structure myfooString
	Public myString As System.String

	'Define a Constuctor Method
	Public Sub New(ByVal Input As String)
		Me.myString = Input
	End Sub
End Structure

'Create my own Class
Public Class mybarInt
	Public myInt1 As System.Int32

	'Define a Constuctor Method
	Public Sub New(ByVal Input As Int32)
		Me.myInt1 = Input
	End Sub
End Class

'Create my own Class
Public Class mybarStr
	Public myStr As System.String

	'Define a Constuctor Method
	Public Sub New(ByVal Input As String)
		Me.myStr = Input
	End Sub
End Class

Class MyFirstClass

	Shared Sub Main()
		Console.WriteLine _
		("Starting the ValueTypeSampleVB Console Application.")
		Dim tick1 As Integer = System.Environment.TickCount
		Dim i As Integer
		For i = 0 To 999999
			Dim test1 As myfooInteger = New myfooInteger(1)
			Dim test2 As myfooInteger = New myfooInteger(2)
			test2 = test1
		Next
		Dim tick2 As Integer = System.Environment.TickCount
		Console.WriteLine _
		("Total milliseconds for Integer Structures: " & _
		(tick2 - tick1))
		Console.WriteLine(" ")

		Dim tick1a As Integer = System.Environment.TickCount
		Dim ia As Integer
		For ia = 0 To 999999
			Dim test1 As myfooString = _
			New myfooString("This is the String")
			Dim test2 As myfooString = _
			New myfooString("This is the Second String")
			test2 = test1
		Next
		Dim tick2a As Integer = System.Environment.TickCount
		Console.WriteLine _
		("Total milliseconds for String Structures: " & _
		(tick2a - tick1a))
		Console.WriteLine(" ")

		Dim tick1d As Integer = System.Environment.TickCount
		Dim id As Integer
		For id = 0 To 999999
			Dim test1 As mybarInt = New mybarInt(1)
			Dim test2 As mybarInt = New mybarInt(2)
			test2 = test1
		Next
		Dim tick2d As Integer = System.Environment.TickCount
		Console.WriteLine _
		("Total milliseconds for Reference - Integer Type Objects Loop: " & _
		(tick2d - tick1d))
		Console.WriteLine(" ")

		Dim tick1e As Integer = System.Environment.TickCount
		Dim ie As Integer
		For ie = 0 To 999999
			Dim test1 As mybarStr = _
			New mybarStr("This is the String")
			Dim test2 As mybarStr = _
			New mybarStr("This is the Second String")
			test2 = test1
		Next
		Dim tick2e As Integer = System.Environment.TickCount
		Console.WriteLine _
		("Total milliseconds for Reference - String Type Objects Loop: " & _
		(tick2e - tick1e))
		Console.WriteLine(" ")

		Console.WriteLine("The Test is now complete. Press Enter to Exit")
		Console.ReadLine()

	End Sub

End Class


