Option Strict On

Public Class ReflectionDriverClass
    Public Sub ReflectionDemo()

        Dim MethodIndex As System.Int32
        Dim ArrayIndex As System.Int32

		'For Demo purposes, Currently Executing Assembly
		'Optionally Pickup an existing referenced Assembly 
        'or perhaps do a late bind, and pickup unreferenced assemblies.
        'Comment/Un-comment below as appropriate

        'Dim UnReferencedAssemblyForLateBind As System.Object
		'Dim ReferencedAssembly = New ReflectionDemo.ReflectionDriverClass()
        Dim AssemblyClass As System.Reflection.Assembly
		AssemblyClass = AssemblyClass.GetExecutingAssembly()
        'AssemblyClass = AssemblyClass.GetAssembly(UnReferencedAssembly.GetType)
		'AssemblyClass = AssemblyClass.GetAssembly(ReferencedAssembly.GetType)

        'Use Reflection to display Assembly Attributes 
        '(stored in AssemblyInfo.vb file)
        GetAssemblyAttributes(AssemblyClass)

        'Use Reflection to report Referenced Assemblies
        Dim AssemblyArray As System.Reflection.AssemblyName()
        AssemblyArray = AssemblyClass.GetReferencedAssemblies()
        For ArrayIndex = 0 To UBound(AssemblyArray)
			Console.WriteLine("Referenced Assemblies: " + _
			AssemblyArray(ArrayIndex).Name)
        Next

        'Use Reflection to list Types within Assembly
        Dim MyTypes() As System.Type
        MyTypes = AssemblyClass.GetTypes()

        For ArrayIndex = 0 To UBound(MyTypes)
            Console.WriteLine("*************************************")
            Console.WriteLine("Type: " + MyTypes(ArrayIndex).FullName)
            If MyTypes(ArrayIndex).IsEnum Then
                Dim EnumStr() As String
                'Use Reflection to get Details of Enums
                EnumStr = System.Enum.GetNames(MyTypes(ArrayIndex))
                Console.WriteLine("   This Enumeration Contains: ")
                Dim xString As String

                For Each xString In EnumStr

                    Dim sb As New System.Text.StringBuilder()
                    sb.Append("   ")
                    sb.Append(xString)
                    sb.Append("--->")
                    sb.Append(System.Enum.Format(MyTypes(ArrayIndex), _
                    System.Enum.Parse(MyTypes(ArrayIndex), xString), "d"))
                    Console.WriteLine(sb.ToString())

                Next
            Else

                'Use Reflection to display TYPE level Custom Attributes
                Dim CustAttr() As Object
                CustAttr = MyTypes(ArrayIndex).GetCustomAttributes(True)
                Dim SysAttrType As System.Attribute
                Dim idx As Integer
                For idx = 0 To UBound(CustAttr)
                    SysAttrType = CType(CustAttr(idx), System.Attribute)
                    Console.WriteLine("Attribute:->" + SysAttrType.ToString())
                Next

                'Use Reflection to get Details other TYPES
                Dim mydemo As New ReflectionDrillDownClass()
                mydemo.DrillDownIntoType(MyTypes(ArrayIndex))

            End If
            Console.WriteLine()
        Next
        Console.WriteLine(String.Empty)
    End Sub

	Public Sub GetAssemblyAttributes(ByVal AssemblyObj As _
	System.Reflection.Assembly)

		Dim CustAttr1() As Object
		CustAttr1 = AssemblyObj.GetCustomAttributes(True)
		Dim SysAttrType1 As System.Attribute
		Dim idx1 As Integer
		For idx1 = 0 To UBound(CustAttr1)
			SysAttrType1 = CType(CustAttr1(idx1), System.Attribute)

			'There are other Attributes available. These were selected 
			'for Demo purposes (stored in AssemblyInfo.vb file)
			Select Case SysAttrType1.ToString()
				Case "System.Reflection.AssemblyCompanyAttribute"
					Dim obj As System.Reflection.AssemblyCompanyAttribute
					obj = CType(SysAttrType1, _
					System.Reflection.AssemblyCompanyAttribute)
					Console.WriteLine("Company: " + obj.Company)
				Case "System.Reflection.AssemblyTitleAttribute"
					Dim obj As System.Reflection.AssemblyTitleAttribute
					obj = CType(SysAttrType1, _
					System.Reflection.AssemblyTitleAttribute)
					Console.WriteLine("Assembly Title: " + obj.Title)
				Case "System.Reflection.AssemblyDescriptionAttribute"
					Dim obj As System.Reflection.AssemblyDescriptionAttribute
					obj = CType(SysAttrType1, _
					System.Reflection.AssemblyDescriptionAttribute)
					Console.WriteLine("Assembly Description: " + obj.Description)
				Case "System.Reflection.AssemblyProductAttribute"
					Dim obj As System.Reflection.AssemblyProductAttribute
					obj = CType(SysAttrType1, _
					System.Reflection.AssemblyProductAttribute)
					Console.WriteLine("Assembly Product: " + obj.Product)
			End Select
		Next
		Console.WriteLine("*************************************")

	End Sub

End Class
