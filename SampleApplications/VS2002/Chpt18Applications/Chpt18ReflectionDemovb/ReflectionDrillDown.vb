Option Strict On

Public Class ReflectionDrillDownClass

    'Use Reflection to Drill down into each Assembly TYPE
    Public Shared Sub DrillDownIntoType(ByVal objType As Type)

        'Use the FindMembers Reflection method to extract all Members Types
        'Optionally, you can Filter by member type, BindingFlag, or Delegate.
        'Use of the Reflection Delegate requires that you Modify the Delegate
        'Parameter below as per your intent to Filter your FindMembers results
        Dim arrayMemberInfo() As System.Reflection.MemberInfo
        arrayMemberInfo = objType.FindMembers(System.Reflection.MemberTypes.All, _
                                      System.Reflection.BindingFlags.Public Or _
                                      System.Reflection.BindingFlags.Static _
                                      Or System.Reflection.BindingFlags.NonPublic _
                                      Or System.Reflection.BindingFlags.Instance, _
                                      New System.Reflection.MemberFilter _
                                      (AddressOf DelegateToSearchCriteria), _
                                      " ")

        Dim index As Integer
        For index = 0 To arrayMemberInfo.Length - 1
            'Treat each Member Type according to desired information
            Select Case arrayMemberInfo(index).MemberType.ToString()

                Case "Field"

                    'Use FieldInfo Reflection Method to Drill down into Field type Members
                    Dim FieldInfo As System.Reflection.FieldInfo
                    FieldInfo = CType(arrayMemberInfo(index), System.Reflection.FieldInfo)

                    Dim FieldInfoStr As String
                    If FieldInfo.IsPublic() Then
                        FieldInfoStr = "Public"
                    End If
                    If FieldInfo.IsPrivate() Then
                        FieldInfoStr = "Private"
                    End If
                    If FieldInfo.IsStatic() Then
                        FieldInfoStr = "Static"
                    End If

                    'Optionally use Reflection and conditional logic to filter as you wish
					If arrayMemberInfo(index).DeclaringType.Namespace.ToString() <> _
					"System" Then
						Console.WriteLine("MemberType - " + ControlChars.Tab + _
						 arrayMemberInfo(index).MemberType.ToString() + _
						  ControlChars.Tab + _
						  FieldInfoStr + _
						  ControlChars.Tab + _
						 "Name -" + ControlChars.Tab + _
						 arrayMemberInfo(index).ToString() + ControlChars.Cr)

						'Logic to support Custom Attributes - At Field Level
						GetCustomAttibutes(arrayMemberInfo(index).GetCustomAttributes(True))

					End If

                Case "Method"

                    'Optionally use Reflection and conditional logic to filter as you wish
					If arrayMemberInfo(index).DeclaringType.Namespace.ToString() <> _
					"System" Then
						Console.WriteLine("MemberType - " + ControlChars.Tab + _
						 arrayMemberInfo(index).MemberType.ToString() + _
						  ControlChars.Tab + _
						 "Name -" + ControlChars.Tab + _
						 arrayMemberInfo(index).ToString() + ControlChars.Cr)
						'Logic to support Custom Attributes - At Member level
						GetCustomAttibutes(arrayMemberInfo(index).GetCustomAttributes(True))
					End If

                Case "Constructor"
                    Console.WriteLine("Constructor - " + ControlChars.Tab + _
                     arrayMemberInfo(index).MemberType.ToString() + _
                      ControlChars.Tab + _
                     arrayMemberInfo(index).ToString() + ControlChars.Cr)

            End Select

        Next index
    End Sub

    'Optionally, customize this Reflection Delegate as you wish
    Public Shared Function DelegateToSearchCriteria _
                            (ByVal objMemberInfo As System.Reflection.MemberInfo, _
                             ByVal objSearch As Object) As Boolean
        'Optionally, modify the logic below (to filter) as per your modifications
        'applied at the time of executing the FindMembers methods above.
		If objMemberInfo.DeclaringType.Namespace.ToString() <> _
		objSearch.ToString() Then
			Return True
		Else
			Return False
		End If
    End Function

    Public Shared Sub GetCustomAttibutes(ByVal myobj() As Object)
        'Logic to support Custom Attributes
        Dim SysAttrTypeFld As System.Attribute
        Dim idxFld As Integer
        For idxFld = 0 To UBound(myobj)
            SysAttrTypeFld = CType(myobj(idxFld), System.Attribute)
            'Single out one of the VB specific Attributes
            Select Case SysAttrTypeFld.ToString()
                Case "Microsoft.VisualBasic.VBFixedStringAttribute"
                    Dim obj As Microsoft.VisualBasic.VBFixedStringAttribute
					obj = CType(SysAttrTypeFld, _
					Microsoft.VisualBasic.VBFixedStringAttribute)
					Console.WriteLine("Attribute:->" + _
					SysAttrTypeFld.ToString() + " " + obj.Length.ToString())
                Case Else
                    Console.WriteLine("Attribute:->" + SysAttrTypeFld.ToString())
            End Select

        Next

    End Sub


End Class
