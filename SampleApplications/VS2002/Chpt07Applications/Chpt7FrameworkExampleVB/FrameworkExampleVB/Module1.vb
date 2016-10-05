' IMPORT a .NET Framework Namespace. 
' By importing the Namespace, you can then refer
' to objects from the Namespace without typing the full
' name of the namespace - provides a shortcut. 
Imports System.Text.RegularExpressions

Module Module1

	Sub Main()

		'Call the Sub Procedure
		MyFirstClass.MyfirstSubProcedure()

	End Sub

End Module

'Create our own Class
Class MyFirstClass
	Public Shared Sub MyfirstSubProcedure()

		'Declare variables by reusing the String Class 
		'The SYSTEM Class is from the SYSTEM namespace
		'Including name of the namespace is optional
		'I could have just had "STRING" instead of "SYSTEM.STRING"

		Dim MyStringPattern As System.String = "\d"
		Dim MyfirstOutputString As System.String
		Dim MyfirstInputString As String _
		= "I think programming on the .NET platform is 0."

		'Using the .NET Framework class REGEX and its Replace method.
		'Our Declared String variable will "receive" the returned result
		'Notice that the AddressOf Operator is used
		'The AddressOf Operator is used to reference the Shared Function.

		MyfirstOutputString = _
		Regex.Replace(MyfirstInputString, MyStringPattern, _
		AddressOf Evaluator)

		Console.WriteLine(MyfirstOutputString)
		Console.WriteLine("Press Enter to Exit")
		Console.ReadLine()

	End Sub

	'  Using the Public Shared Function that is 
	'  fired each time the Regex.Replace method finds a match

	Public Shared Function Evaluator(ByVal passedString As Match) As String

		'Optionally, you could make the return value
		'conditional depending on the MATCH value.
		Return "Easy"

	End Function

End Class
