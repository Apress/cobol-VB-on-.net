Public Class DocumentedClass1
    'use our Custom Attribute
    Inherits ReflectionDemo.MYCustomAttribute

	'When using our Custom Attribute below, 
	'the "Attribute" suffix is optional
	<MyDocumentationAttribute("Request_123", _
	"Added Class to Support new Business Rule")> _
	Public Class myDocumentedClass

		<MyDocumentationAttribute("Request_456", _
		"Changed Name or Variable")> _
		Public myInt As System.Int32

		<MyDocumentationAttribute("Request_789", _
		"Changed Access attribute to Private")> _
		Private myString As System.String

		<MyDocumentationAttribute("Request_ABC", _
		"Modfied Sub Routines Scope")> _
		Public Function myDocumentedFunction() As String
			'Do Nothing
		End Function

	End Class

End Class