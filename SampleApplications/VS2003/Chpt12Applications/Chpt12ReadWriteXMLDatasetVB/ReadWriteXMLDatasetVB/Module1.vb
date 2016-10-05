'This sample program demonstrates how to Read 
'and Write data from/to a ADO.NET Dataset in XML
'format.

Module Module1

	Sub Main()

		Call UseSqlDataAdapter(OptionalPreTableBuild)
		Console.WriteLine(" ")
		Console.ReadLine()

	End Sub


	Public Function OptionalPreTableBuild() As DataSet
		'It is possible to obtain the "schema" or table structure
		'directly/automatically from the SQL Server Database
		'This section is added for training purposes.
		'The information found in this section would be critical
		'in the case of building a disconnected .NET dataset
		'that may have a non-SQL Server Data Source.

		' Create new DataTable.
		Dim myDataTable As DataTable = _
		New System.Data.DataTable("myCustomers")

		' Declare DataColumn and DataRow variables.
		Dim myDataColumn As System.Data.DataColumn
		Dim myDataRow As System.Data.DataRow

		' Create 1st myDataColumn.    
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "CustomerID"
		myDataColumn.Unique = True
		myDataTable.Columns.Add(myDataColumn)

		' Create 2nd myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "CompanyName"
		myDataTable.Columns.Add(myDataColumn)

		' Create 3rd myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "ContactName"
		myDataTable.Columns.Add(myDataColumn)

		' Create 4th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "ContactTitle"
		myDataTable.Columns.Add(myDataColumn)

		' Create 5th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "Address"
		myDataTable.Columns.Add(myDataColumn)

		' Create 6th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "City"
		myDataTable.Columns.Add(myDataColumn)

		' Create 7th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "Region"
		myDataTable.Columns.Add(myDataColumn)

		' Create 8th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "PostalCode"
		myDataTable.Columns.Add(myDataColumn)

		' Create 9th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "Country"
		myDataTable.Columns.Add(myDataColumn)

		' Create 10th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "Phone"
		myDataTable.Columns.Add(myDataColumn)

		' Create 11th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "Fax"
		myDataTable.Columns.Add(myDataColumn)

		' Assign primary key column to CustomerID column
		Dim PrimaryKeyColumns(0) As System.Data.DataColumn
		PrimaryKeyColumns(0) = myDataTable.Columns("CustomerID")
		myDataTable.PrimaryKey = PrimaryKeyColumns

		' Reference the DataSet.
		Dim myDataSet As New System.Data.DataSet()
		' Associate the Table with the Dataset.
		myDataSet.Tables.Add(myDataTable)
		myDataTable = Nothing
		Return myDataSet

	End Function

	Public Sub UseSqlDataAdapter(ByVal myDataset As DataSet)
		'Reference Data Provider Objects
		Dim mySqlConnection As New System.Data.SqlClient.SqlConnection()
		Dim mySqlDataAdapter As New System.Data.SqlClient.SqlDataAdapter()
		Dim mySqlCommand As New System.Data.SqlClient.SqlCommand()

		'Reference Dataset Objects
		Dim myDataRow As System.Data.DataRow

		'Prepare to Connect to SQL Server Database
		'using Connection String
		mySqlConnection.ConnectionString = _
		"user id=sa;pwd=;Database=northwind;Server=(LOCAL)"

		'Associate the Command Object with the Connection Object
		mySqlCommand.Connection = mySqlConnection
		'Associate the Command Object with intended SQL Statement  
		mySqlCommand.CommandText = "Select * from Customers"

		'Associate the DataAdapter Object with the Command Object
		mySqlDataAdapter.SelectCommand = mySqlCommand
		'Have the DataAdapter Object Execute the SQL Statement and
		'store the result set in a DataSet DataTable named myCustomers
		mySqlDataAdapter.Fill(myDataset, "myCustomers")

		'Close the Database Connection
		mySqlConnection.Close()
		mySqlConnection = Nothing
		mySqlDataAdapter = Nothing
		mySqlCommand = Nothing

		'Pass the Disconnected Dataset to the called method
		Call ReadWriteXML(myDataset)

	End Sub

	Private Sub ReadWriteXML(ByVal ds1 As System.Data.DataSet)

		'The following XML file will be saved on your harddisk.
		'You can locate it in the local application BIN folder
		Dim myXmlFile As String = "myCustomers.xml"

		'Demonstrate the usage of the WriteXml method
		'Write out an XML file that originated as relational data
		ds1.WriteXml(myXmlFile, XmlWriteMode.IgnoreSchema)

		'Demonstrate the usage of the ReadXml method
		'Load a 2nd Dataset from the saved XML file
		Dim ds2 As New System.Data.DataSet()
		ds2.ReadXml(myXmlFile)

		'Demonstrate the usage of the GETXML method
		'Extract data from the Dataset in XML format
		Console.WriteLine(ds2.GetXml())

	End Sub

End Module
