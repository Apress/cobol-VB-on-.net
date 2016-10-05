Module Module1
	Sub Main()
		'Create Objects from System.Reflection Namespace 
		Dim myMemberInfoArray() As System.Reflection.MemberInfo
		Dim myAssembly As System.Reflection.Assembly

		Dim MyTypes() As System.Type
		Dim MyType As System.Type
		Dim indexA As Integer
		Dim indexB As Integer

		'Create Object from StringBuilder Class
		Dim sb As New System.Text.StringBuilder()

		'Get the Type associated with the StringBuilder
		MyType = sb.GetType
		'Get the Assembly associated with the StringBuilder Type
		myAssembly = myAssembly.GetAssembly(MyType)
		'Get the Types found in the Assembly
		MyTypes = myAssembly.GetTypes()
		
		For indexA = 0 To UBound(MyTypes)
			'Select specific Type for further processing
			If MyTypes(indexA).Name = "StringBuilder" Then
				'Display appropriate Information
				Console.WriteLine(MyTypes(indexA).FullName)
				'Get members found in the selected Type
				myMemberInfoArray = MyTypes(indexA).GetMembers()
				For indexB = 0 To myMemberInfoArray.Length - 1
					'Display appropriate Information
					sb.Length = 0
					With sb
						.Append("MemberType - ")
						.Append(" ")
						.Append(myMemberInfoArray(indexB).MemberType.ToString())
						.Append(" ")
						.Append("Name -")
						.Append(" ")
						.Append(myMemberInfoArray(indexB).ToString())
						.Append(" ")
						Console.WriteLine(.ToString())
					End With
				Next indexB
				'Exit Loop after StringBuilder Type is located
				Exit For
			End If
		Next
		Console.ReadLine()
	End Sub
End Module
