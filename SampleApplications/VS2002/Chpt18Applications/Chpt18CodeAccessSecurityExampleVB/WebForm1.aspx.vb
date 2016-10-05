Imports System.Security.Permissions

Public Class WebForm1
	Inherits System.Web.UI.Page
	Protected WithEvents Label1 As System.Web.UI.WebControls.Label
	Protected WithEvents Button1 As System.Web.UI.WebControls.Button

#Region " Web Form Designer Generated Code "

	'This call is required by the Web Form Designer.
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

	End Sub

	Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
		'CODEGEN: This method call is required by the Web Form Designer
		'Do not modify it using the code editor.
		InitializeComponent()
	End Sub

#End Region

	Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

		Label1.Text = "Reminder: View Trace Output by entering the following in your address bar-http://localhost/CodeAccessSecurityExampleVB/trace.axd"

		'The following logic added for Code Access Security demonstration

		'Use Reflection to retrieve Current Assembly
		Dim ExecutingAssembly As System.Reflection.Assembly
		ExecutingAssembly = ExecutingAssembly.GetExecutingAssembly()

		'Retrieve Evidence Array
		Dim EvidenceArray As System.Security.Policy.Evidence _
		= ExecutingAssembly.Evidence
		Dim i As IEnumerator = EvidenceArray.GetHostEnumerator
		While i.MoveNext
			Dim evidence As Object = i.Current
			'Display Types of Evidence members
			Trace.Write("Evidence:  " & evidence.GetType.ToString())
			'Exclude Hash from "text" based Write, otherwise, display Evidence
			If Trim(evidence.GetType.ToString()) <> "System.Security.Policy.Hash" Then
				Trace.Write("Evidence:  " & evidence.ToString())
			End If
		End While


		'Examine the PolicyHierarchy Objects
		Dim ii As IEnumerator = System.Security.SecurityManager.PolicyHierarchy
		While ii.MoveNext
			Dim level As Object = ii.Current
			Trace.Write("Policy Level : " & level.label)
			Trace.Write("Policy StoreLocation : " & level.StoreLocation)
		End While

		'Review the NamedPermissionSets
		Dim iii As IEnumerator = System.Security.SecurityManager.PolicyHierarchy()
		While iii.MoveNext()
			Dim level As System.Security.Policy.PolicyLevel = _
			CType(iii.Current, System.Security.Policy.PolicyLevel)
			Trace.Write("Policy Level: " & level.Label)
			Dim iiii As IEnumerator = level.NamedPermissionSets.GetEnumerator()
			While iiii.MoveNext()
				Dim NamedPermissionSet As System.Security.NamedPermissionSet = _
				CType(iiii.Current, System.Security.NamedPermissionSet)
				Trace.Write("   Permission set: " & NamedPermissionSet.Name)
			End While
		End While

		'Examine the RootCodeGroup MembershipCondition per Policy Level
		Dim iiiii As IEnumerator = System.Security.SecurityManager.PolicyHierarchy()
		While iiiii.MoveNext()
			Dim level As System.Security.Policy.PolicyLevel = _
			CType(iiiii.Current, System.Security.Policy.PolicyLevel)
			Trace.Write("Policy Level: " & level.Label)

			Dim CodeGroup As System.Security.Policy.CodeGroup = level.RootCodeGroup
			Trace.Write("    Root CodeGroup MembershipCondition: " & _
			CodeGroup.MembershipCondition.ToString())
		End While

		'The logic below was commented out because the PermissionAgg
		'property shown in the next code snippet accomplished the 
		' same thing with fewer lines of code.

		'Dim myps As System.Security.PermissionSet = _
		'System.Security.SecurityManager.ResolvePolicy(ExecutingAssembly.Evidence)
		'Trace.Write("Permission Count: " & myps.Count.ToString)
		'Dim iiiiii As IEnumerator = myps.GetEnumerator
		'While iiiiii.MoveNext
		'	Dim iPermission As System.Security.IPermission = iiiiii.Current
		'	Dim se As System.Security.SecurityElement = iPermission.ToXml
		'	Trace.Write(CStr(se.ToString))
		'End While

		Dim PermissionAgg As System.Security.PermissionSet = _
		System.Security.SecurityManager.ResolvePolicy(EvidenceArray)
		Trace.Write("Permission Aggregate : " & PermissionAgg.ToString)


	End Sub

	Private Sub WriteMyData()

		'Demo code for Denying permissions
		'****************************
		Dim sPath As String = Server.MapPath("myTextFile.txt")
		Dim fsPermission1 As FileIOPermission = _
		New FileIOPermission(FileIOPermissionAccess.AllAccess, sPath)
		fsPermission1.Deny()

		'fsPermission1.Demand()
		'fsPermission1.Assert()
		'ps.AddPermission(fsPermission1)
		'ps.Assert()
		'''****************************

		'Declare a StreamWriter Object
		'which inherits System.IO.TextWriter
		Dim myStreamWriter As System.IO.StreamWriter
		'Return Value of File.CreateText Method = StreamWriter
		myStreamWriter = _
		System.IO.File.CreateText(Server.MapPath("myTextFile.txt"))
		'
		Dim myInt As System.Int32
		For myInt = 0 To 3
			myStreamWriter.WriteLine("This is a Test")
		Next
		'Close the StreamWriter and file
		myStreamWriter.Close()
	End Sub

	Private Sub ReadMyData()
		'Declare a StreamReader Object
		'which inherits System.IO.TextReader
		Dim myStreamReader As System.IO.StreamReader
		'Return Value of File.OpenText Method = StreamReader
		myStreamReader = System.IO.File.OpenText("myTextFile.txt")
		'Read Until Reaching the End of the StreamReader
		Dim myReadString As System.String
		Do Until myStreamReader.Peek = -1
			myReadString = myStreamReader.ReadLine()
			Trace.Write(myReadString)
		Loop
		'Close the StreamReader and file
		myStreamReader.Close()

	End Sub

	Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
		Try
			Call WriteMyData()
			Call ReadMyData()
		Catch myException As Exception
			Trace.Write("An Error Msg: " & myException.Message)
		End Try
	End Sub
End Class
