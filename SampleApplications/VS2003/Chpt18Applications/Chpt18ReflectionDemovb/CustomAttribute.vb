Public Class MYCustomAttribute

    'Create your own custom attributes
    '(1) Use the AttributeUsage Tag
    '(2) Decide on AttributeTarget scope, etc.
    '(3) Use "Attribute" suffix
    '(4) Inherit System.Attribute
    <AttributeUsage(AttributeTargets.All, AllowMultiple:=True)> _
    Public Class MyDocumentationAttribute
        Inherits System.Attribute
        Public RequestNumber As String
        Public RequestNotes As String
        Public Sub New(ByVal varDrNumber As String, ByVal varDrNotes As String)
            MyBase.New()
            RequestNumber = varDrNumber
            RequestNotes = varDrNotes
        End Sub
        Public Overrides Function ToString() As String
			Return _
			("Request Documentation: " + RequestNumber + " " + RequestNotes)
        End Function
    End Class

End Class
