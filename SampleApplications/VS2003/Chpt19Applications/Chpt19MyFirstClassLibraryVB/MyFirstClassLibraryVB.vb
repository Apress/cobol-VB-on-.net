Imports System.EnterpriseServices

<TransactionAttribute(TransactionOption.Required)> _
 Public Class MyFirstClassLibraryVB
	Inherits System.EnterpriseServices.ServicedComponent

	Public Sub New()
		MyBase.New()
	End Sub

	<AutoComplete()> Public Function DoTransaction() _
  As String
		Return "Hello World with Enterprise Services :-)"
	End Function

End Class
