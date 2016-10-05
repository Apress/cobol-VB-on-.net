'Sample Code using ADO.NET Technology
Module Module1

	Sub main()

		Call UseSqlDataAdapter(OptionalPreTableBuild)
		Console.WriteLine(" ")

		Call UseSqlDataReader()
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
		New System.Data.DataTable("myCategories")

		' Declare DataColumn and DataRow variables.
		Dim myDataColumn As System.Data.DataColumn
		Dim myDataRow As System.Data.DataRow

		' Create 1st myDataColumn.    
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = System.Type.GetType("System.Int32")
		myDataColumn.ColumnName = "CategoryID"
		myDataColumn.Unique = True
		myDataTable.Columns.Add(myDataColumn)

		' Create 2nd myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "CategoryName"
		myDataTable.Columns.Add(myDataColumn)

		' Create 3rd myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.String")
		myDataColumn.ColumnName = "Description"
		myDataTable.Columns.Add(myDataColumn)

		' Create 4th myDataColumn.
		myDataColumn = New System.Data.DataColumn()
		myDataColumn.DataType = Type.GetType("System.Byte[]")
		myDataColumn.ColumnName = "Picture"
		myDataTable.Columns.Add(myDataColumn)

		' Assign primary key column to CategoryID column
		Dim PrimaryKeyColumns(0) As System.Data.DataColumn
		PrimaryKeyColumns(0) = myDataTable.Columns("CategoryID")
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
		mySqlCommand.CommandText = "Select * from Categories"

		'Associate the DataAdapter Object with the Command Object
		mySqlDataAdapter.SelectCommand = mySqlCommand
		'Have the DataAdapter Object Execute the SQL Statement and
		'store the result set in a DataSet DataTable named myCategories
		mySqlDataAdapter.Fill(myDataset, "myCategories")

		'Loop through the Dataset DataTable
		'Write out one DataColumn per DataRow
		For Each myDataRow In myDataset.Tables("myCategories").Rows
			Console.WriteLine(myDataRow("CategoryName").ToString())
		Next

		'Close the Database Connection
		mySqlConnection.Close()
		mySqlConnection = Nothing
		mySqlDataAdapter = Nothing
		mySqlCommand = Nothing

	End Sub

	Public Sub UseSqlDataReader()
		'Reference Data Provider Objects
		Dim mySqlConnection As New System.Data.SqlClient.SqlConnection()
		Dim mySqlDataReader As System.Data.SqlClient.SqlDataReader
		Dim mySqlCommand As New System.Data.SqlClient.SqlCommand()

		'Connect to SQL Server Database using Connection String
		mySqlConnection.ConnectionString = _
		"user id=sa;pwd=;Database=northwind;Server=(LOCAL)"
		mySqlConnection.Open()

		'Associate the Command Object with the Connection Object
		mySqlCommand.Connection = mySqlConnection
		'Associate the Command Object with intended SQL Statement  
		mySqlCommand.CommandText = "Select * from Categories"

		'Have the DataReader Object Execute the SQL Statement and
		'store the result set in a DataReader Object
		mySqlDataReader = mySqlCommand.ExecuteReader()

		'Loop through the DataReader Object, Advancing to each Record
		'Write out one Column per Record
		While mySqlDataReader.Read()
			Console.WriteLine((mySqlDataReader.GetString(1)))
		End While

		'Close the DataReader
		mySqlDataReader.Close()
		'Close the Database Connection
		mySqlConnection.Close()

		mySqlConnection = Nothing
		mySqlCommand = Nothing

	End Sub

End Module
