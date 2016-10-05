Public Class Form1
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
	Friend WithEvents Button1 As System.Windows.Forms.Button
	Friend WithEvents DataGrid1 As System.Windows.Forms.DataGrid
	Friend WithEvents StatusBar1 As System.Windows.Forms.StatusBar
	Friend WithEvents ProgressBar1 As System.Windows.Forms.ProgressBar
	Friend WithEvents ToolTip1 As System.Windows.Forms.ToolTip
	Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents DataGrid2 As System.Windows.Forms.DataGrid
	Friend WithEvents Label1 As System.Windows.Forms.Label
	<System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.DataGrid1 = New System.Windows.Forms.DataGrid()
        Me.StatusBar1 = New System.Windows.Forms.StatusBar()
        Me.ProgressBar1 = New System.Windows.Forms.ProgressBar()
        Me.ToolTip1 = New System.Windows.Forms.ToolTip(Me.components)
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.DataGrid2 = New System.Windows.Forms.DataGrid()
        Me.Label1 = New System.Windows.Forms.Label()
        CType(Me.DataGrid1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DataGrid2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(15, 15)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(168, 22)
        Me.Button1.TabIndex = 0
        Me.Button1.Text = "Button1"
        '
        'DataGrid1
        '
        Me.DataGrid1.DataMember = ""
        Me.DataGrid1.HeaderForeColor = System.Drawing.SystemColors.ControlText
        Me.DataGrid1.Location = New System.Drawing.Point(7, 53)
        Me.DataGrid1.Name = "DataGrid1"
        Me.DataGrid1.Size = New System.Drawing.Size(293, 159)
        Me.DataGrid1.TabIndex = 1
        '
        'StatusBar1
        '
        Me.StatusBar1.Location = New System.Drawing.Point(0, 253)
        Me.StatusBar1.Name = "StatusBar1"
        Me.StatusBar1.Size = New System.Drawing.Size(606, 21)
        Me.StatusBar1.TabIndex = 2
        Me.StatusBar1.Text = "StatusBar1"
        '
        'ProgressBar1
        '
        Me.ProgressBar1.Location = New System.Drawing.Point(7, 220)
        Me.ProgressBar1.Name = "ProgressBar1"
        Me.ProgressBar1.Size = New System.Drawing.Size(293, 21)
        Me.ProgressBar1.TabIndex = 3
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(212, 15)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(68, 22)
        Me.Button2.TabIndex = 4
        Me.Button2.Text = "TimerFun"
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(314, 8)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(278, 21)
        Me.Button3.TabIndex = 5
        Me.Button3.Text = "Click to Receive MSMQ Message"
        '
        'DataGrid2
        '
        Me.DataGrid2.DataMember = ""
        Me.DataGrid2.HeaderForeColor = System.Drawing.SystemColors.ControlText
        Me.DataGrid2.Location = New System.Drawing.Point(314, 53)
        Me.DataGrid2.Name = "DataGrid2"
        Me.DataGrid2.Size = New System.Drawing.Size(278, 189)
        Me.DataGrid2.TabIndex = 6
        Me.DataGrid2.Visible = False
        '
        'Label1
        '
        Me.Label1.Location = New System.Drawing.Point(321, 38)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(271, 15)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "What is the GUID used for the MSMQ message?"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(606, 274)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Label1, Me.DataGrid2, Me.Button3, Me.Button2, Me.ProgressBar1, Me.StatusBar1, Me.DataGrid1, Me.Button1})
        Me.Name = "Form1"
        Me.Text = "MyMSMQExampleVB"
        CType(Me.DataGrid1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DataGrid2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

#End Region
	
	Private Sub Form1_Load(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles MyBase.Load
		'set all controls with initial values

		Me.Text = "MyMSMQExampleVB"
		Button1.Text = "Click to Load Datagrid"

		With ToolTip1
			.SetToolTip(Button1, _
			"Press this Button to load Datagrid")
			.SetToolTip(DataGrid1, _
			"Click on Column Header to Sort By that Column")
		End With
		With DataGrid1
			.Visible = False
			.CaptionText = "Categories Table"
		End With

		ProgressBar1.Visible = False
		StatusBar1.Text = _
		"Please Click the Button to Load the DataGrid"

	End Sub

	Private Sub Button1_Click(ByVal sender As Object, _
	ByVal e As System.EventArgs) Handles Button1.Click
		ProgressBar1.Visible = True
		ProgressBar1.Increment(10)
		StatusBar1.Text = "Updating DataGrid"

		Call UseSqlDataAdapter(OptionalPreTableBuild)



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

		ProgressBar1.Increment(10)


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

		ProgressBar1.Increment(10)

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
		Dim myConn As String = _
		System.Configuration.ConfigurationSettings.AppSettings("MyVBConnectionString")
		mySqlConnection.ConnectionString = myConn
		'mySqlConnection.ConnectionString = _
		'"user id=sa;pwd=;Database=northwind;Server=(LOCAL)"


		ProgressBar1.Increment(10)

		'Associate the Command Object with the Connection Object
		mySqlCommand.Connection = mySqlConnection
		'Associate the Command Object with intended SQL Statement  
		mySqlCommand.CommandText = "Select * from Categories"

		'Associate the DataAdapter Object with the Command Object
		mySqlDataAdapter.SelectCommand = mySqlCommand
		'Have the DataAdapter Object Execute the SQL Statement and
		'store the result set in a DataSet DataTable named myCategories
		mySqlDataAdapter.Fill(myDataset, "myCategories")

		ProgressBar1.Increment(10)

		'****************************************************
		With DataGrid1
			.Visible = "True"
			.DataSource = myDataset
			.DataMember = "myCategories"
		End With
		'****************************************************

		ProgressBar1.Increment(60)

		'Close the Database Connection
		mySqlConnection.Close()
		mySqlConnection = Nothing
		mySqlDataAdapter = Nothing
		mySqlCommand = Nothing

		StatusBar1.Text = "Completed Filling DataGrid"
		
	End Sub


	Private Shared tm As New System.Windows.Forms.Timer()
	Private Shared Cycles As Int32
	Private Sub Button2_Click(ByVal sender As System.Object, _
	ByVal e As System.EventArgs) Handles Button2.Click
		Cycles = 0
		Call FunWithTimer()
	End Sub
	Public Sub TimerEventProcessor(ByVal myObject As Object, _
	ByVal myEventArgs As EventArgs)
		Cycles += 1
		Me.Opacity = 0.1 * Cycles
		If Cycles > 10 Then
			tm.Stop()
		End If
	End Sub
	Public Sub FunWithTimer()
		AddHandler tm.Tick, AddressOf TimerEventProcessor
		tm.Interval = 500
		tm.Start()
	End Sub

	Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
		Dim myNewDataset As System.Data.DataSet
        Dim myMessage As System.Messaging.Message
        Dim MessageQueue1 As New System.Messaging.MessageQueue(".\Private$\MyMSMQExample")
		Try
			MessageQueue1.Peek(New TimeSpan(0))

			myMessage = MessageQueue1.Receive
			myMessage.Formatter = New _
			System.Messaging.XmlMessageFormatter(New Type() {GetType(DataSet)})
			myNewDataset = CType(myMessage.Body, DataSet)

			'****************************************************
			With DataGrid2
				.Visible = "True"
				.DataSource = myNewDataset
				.DataMember = "myCategories"
			End With
			Button3.Text = "MSMQ Message removed from Queue"
			Label1.Text = myMessage.Label
		Catch myexception As System.Messaging.MessageQueueException
			If myexception.MessageQueueErrorCode = _
			  System.Messaging.MessageQueueErrorCode.IOTimeout Then
				MsgBox("Please Load the MSMQ Message first")
			End If
		End Try

		'Example code to Load MSMQ Private Queue
		'Dim myGuid As String = System.Guid.NewGuid.ToString
		'MessageQueue1.Send(myDataset, myGuid)
	End Sub

End Class
