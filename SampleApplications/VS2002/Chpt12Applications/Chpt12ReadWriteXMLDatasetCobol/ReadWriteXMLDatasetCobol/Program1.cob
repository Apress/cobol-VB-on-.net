000010* Sample Code demonstrating ADO.NET's support for XML Technology 
000020 IDENTIFICATION DIVISION.
000030 PROGRAM-ID. MAIN.
000040 ENVIRONMENT DIVISION.
000050 CONFIGURATION SECTION.
000060 REPOSITORY.
000070* .NET Framework Classes
000080	   CLASS SqlConnection  AS "System.Data.SqlClient.SqlConnection"
000090     CLASS SqlDataAdapter As "System.Data.SqlClient.SqlDataAdapter"
000100     CLASS SqlCommand As "System.Data.SqlClient.SqlCommand"
000110     CLASS DataSet    As "System.Data.DataSet"
000120     CLASS DataTable  AS "System.Data.DataTable"
000130     CLASS DataRow    As "System.Data.DataRow"
000140     CLASS DataColumn AS "System.Data.DataColumn"
000150     CLASS SystemType        AS "System.Type"
000160     CLASS DataColumnArray   AS "System.Data.DataColumn[]"
000170
000180     CLASS Sys-Integer      AS "System.Int32"
000190     CLASS Sys-String       AS "System.String"
000200     CLASS Sys-Object       AS "System.Object"    
000210
000220* .NET Framework Properties 
000230     PROPERTY PROP-ConnectionString AS "ConnectionString"
000240     PROPERTY PROP-Connection       AS "Connection"
000250     PROPERTY PROP-CommandText      AS "CommandText"
000260     PROPERTY PROP-SelectCommand    AS "SelectCommand"
000270     PROPERTY PROP-Columns          AS "Columns"
000280     PROPERTY PROP-Tables           AS "Tables"
000290     PROPERTY PROP-DataType         AS "DataType"
000300     PROPERTY PROP-ColumnName       AS "ColumnName"
000310     PROPERTY PROP-Item             AS "Item"
000320     PROPERTY PROP-PrimaryKey       AS "PrimaryKey"
000330     PROPERTY PROP-Unique           AS "Unique"
000340     PROPERTY PROP-IgnoreSchema     AS "IgnoreSchema"
000350
000360* .NET Framework Enumerations 
000370     ENUM     ENUM-XmlWriteMode     AS "System.Data.XmlWriteMode".
000380
000390 DATA DIVISION.
000400 WORKING-STORAGE SECTION.
000410   77 mySqlConnection   OBJECT REFERENCE SqlConnection.
000420   77 mySqlDataAdapter  OBJECT REFERENCE SqlDataAdapter.
000430   77 mySqlCommand      OBJECT REFERENCE SqlCommand.
000440   77 myDataSet1        OBJECT REFERENCE DataSet.
000450   77 myDataSet2        OBJECT REFERENCE DataSet.
000460   77 myDataTable       OBJECT REFERENCE DataTable.
000470   77 myDataColumn      OBJECT REFERENCE DataColumn.
000480   77 myPrimaryKeyColumn  OBJECT REFERENCE DataColumn.
000490   77 myPrimaryKeyColumns OBJECT REFERENCE DataColumnArray.
000500   77 myENUM-XmlWriteMode OBJECT REFERENCE ENUM-XmlWriteMode.
000510
000520   77 mySys-String  OBJECT REFERENCE Sys-String.
000530   77 mySys-Integer OBJECT REFERENCE Sys-Integer.
000540   77 mySys-Object  OBJECT REFERENCE Sys-Object.
000550   77 myXmlFile     OBJECT REFERENCE Sys-String.
000560   77 myDisplayString PIC x(38550).
000570   77 myInt           PIC S9(9) COMP-5.
000580   77 myOtherInt      PIC S9(9) COMP-5.
000590   01 NULL-X          PIC X(1).
000600 PROCEDURE DIVISION.
000610
000620     Perform 0000-OptionalPreTableBuild.
000630	   Perform 1000-UseSqlDataAdapter.
000640     Perform 2000-ReadWriteXML.
000650     DISPLAY " "
000660     
000670     DISPLAY "Enter X and Press Enter to Exit.".
000680     ACCEPT NULL-X.
000690     Stop Run.
000700     
000710************************************************
000720   0000-OptionalPreTableBuild.
000730*  It is possible to obtain the "schema" or table structure
000740*  directly/automatically from the SQL Server Database
000750*  This section is added for training purposes.
000760*  The information found in this section would be critical
000770*  in the case of building a disconnected .NET dataset
000780*  that may have a non-SQL Server Data Source.
000790
000800* Create a new DataTable.
000810     INVOKE DataTable "NEW" USING BY VALUE "myCustomers"
000820         RETURNING myDataTable.
000830
000840* Create 1st myDataColumn.
000850     INVOKE DataColumn "NEW" RETURNING myDataColumn.
000860     SET PROP-DataType OF myDataColumn TO
000870         SystemType::"GetType"("System.String").
000880     SET PROP-ColumnName OF myDataColumn TO "CustomerID".
000890     SET PROP-Unique OF myDataColumn TO B"1".
000900     INVOKE PROP-Columns OF myDataTable "Add" 
000910       USING BY VALUE myDataColumn.
000920     
000930* Create 2nd myDataColumn.
000940     INVOKE DataColumn "NEW" RETURNING myDataColumn.
000950     SET PROP-DataType OF myDataColumn TO
000960         SystemType::"GetType"("System.String").
000970     SET PROP-ColumnName OF myDataColumn TO "CompanyName".
000980     INVOKE PROP-Columns OF myDataTable "Add" 
000990       USING BY VALUE myDataColumn.
001000     
001010* Create 3rd myDataColumn.
001020     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001030     SET PROP-DataType OF myDataColumn TO
001040         SystemType::"GetType"("System.String").
001050     SET PROP-ColumnName OF myDataColumn TO "ContactName".
001060     INVOKE PROP-Columns OF myDataTable "Add" 
001070       USING BY VALUE myDataColumn.
001080     
001090* Create 4th myDataColumn.
001100     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001110     SET PROP-DataType OF myDataColumn TO
001120         SystemType::"GetType"("System.String").
001130     SET PROP-ColumnName OF myDataColumn TO "ContactTitle".
001140     INVOKE PROP-Columns OF myDataTable "Add" 
001150       USING BY VALUE myDataColumn.
001160     
001170* Create 5th myDataColumn.
001180     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001190     SET PROP-DataType OF myDataColumn TO
001200         SystemType::"GetType"("System.String").
001210     SET PROP-ColumnName OF myDataColumn TO "Address".
001220     INVOKE PROP-Columns OF myDataTable "Add" 
001230       USING BY VALUE myDataColumn.
001240     
001250* Create 6th myDataColumn.
001260     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001270     SET PROP-DataType OF myDataColumn TO
001280         SystemType::"GetType"("System.String").
001290     SET PROP-ColumnName OF myDataColumn TO "City".
001300     INVOKE PROP-Columns OF myDataTable "Add" 
001310       USING BY VALUE myDataColumn.
001320     
001330* Create 7th myDataColumn.
001340     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001350     SET PROP-DataType OF myDataColumn TO
001360         SystemType::"GetType"("System.String").
001370     SET PROP-ColumnName OF myDataColumn TO "Region".
001380     INVOKE PROP-Columns OF myDataTable "Add" 
001390       USING BY VALUE myDataColumn.
001400     
001410* Create 8th myDataColumn.
001420     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001430     SET PROP-DataType OF myDataColumn TO
001440         SystemType::"GetType"("System.String").
001450     SET PROP-ColumnName OF myDataColumn TO "PostalCode".
001460     INVOKE PROP-Columns OF myDataTable "Add" 
001470       USING BY VALUE myDataColumn.
001480     
001490* Create 9th myDataColumn.
001500     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001510     SET PROP-DataType OF myDataColumn TO
001520         SystemType::"GetType"("System.String").
001530     SET PROP-ColumnName OF myDataColumn TO "Country".
001540     INVOKE PROP-Columns OF myDataTable "Add" 
001550       USING BY VALUE myDataColumn.
001560     
001570* Create 10th myDataColumn.
001580     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001590     SET PROP-DataType OF myDataColumn TO
001600         SystemType::"GetType"("System.String").
001610     SET PROP-ColumnName OF myDataColumn TO "Phone".
001620     INVOKE PROP-Columns OF myDataTable "Add" 
001630       USING BY VALUE myDataColumn.
001640      
001650* Create 11th myDataColumn.
001660     INVOKE DataColumn "NEW" RETURNING myDataColumn.
001670     SET PROP-DataType OF myDataColumn TO
001680         SystemType::"GetType"("System.String").
001690     SET PROP-ColumnName OF myDataColumn TO "Fax".
001700     INVOKE PROP-Columns OF myDataTable "Add" 
001710       USING BY VALUE myDataColumn.
001720     
001730* Assign primary key column to "CustomerID" column.
001740     INVOKE DataColumnArray "NEW" USING BY VALUE 1
001750         RETURNING myPrimaryKeyColumns.
001760     INVOKE PROP-Columns OF myDataTable "get_Item" 
001770       USING BY VALUE "CustomerID"
001780       RETURNING myPrimaryKeyColumn.
001790     INVOKE myPrimaryKeyColumns "Set" 
001800       USING BY VALUE 0 myPrimaryKeyColumn.
001810     SET PROP-PrimaryKey OF myDataTable TO myPrimaryKeyColumns.
001820     
001830* Reference the DataSet.
001840     INVOKE DataSet "NEW" RETURNING myDataSet1.
001850* Associate the Table with the Dataset.
001860     INVOKE PROP-Tables OF myDataSet1 "Add" 
001870       USING BY VALUE myDataTable.
001880
001890************************************************
001900   1000-UseSqlDataAdapter.
001910   
001920*  Reference Data Provider Objects
001930		INVOKE SqlConnection "NEW"  RETURNING  mySqlConnection 
001940      INVOKE SqlDataAdapter "NEW" RETURNING  mySqlDataAdapter 
001950      INVOKE SqlCommand "NEW"     RETURNING  mySqlCommand
001960      
001970*  Prepare to Connect to SQL Server Database
001980*  using Connection String
001990      SET PROP-ConnectionString OF mySqlConnection TO
002000      "user id=sa;pwd=;Database=northwind;Server=(LOCAL)"
002010		
002020*  Associate the Command Object with the Connection Object
002030      SET PROP-Connection OF mySqlCommand TO mySqlConnection    
002040*  Associate the Command Object with intended SQL Statement
002050      SET PROP-CommandText OF mySqlCommand TO "Select * from Customers"
002060*  Associate the DataAdapter Object with the Command Object
002070      SET PROP-SelectCommand OF mySqlDataAdapter TO mySqlCommand
002080
002090*  Have the DataAdapter Object Execute the SQL Statement and
002100*  store the result set in a DataSet DataTable named myCustomers
002110     INVOKE mySqlDataAdapter "Fill" 
002120       USING BY VALUE myDataSet1, "myCustomers"
002130
002140*  Close the Database Connection
002150      INVOKE mySqlConnection "Close".
002160      
002170      SET mySqlConnection TO NULL.
002180      SET mySqlDataAdapter TO NULL.
002190      SET mySqlCommand TO NULL.
002200      SET myDataTable TO NULL.
002210
002220************************************************
002230   2000-ReadWriteXML.
002240   
002250*  The following XML file will be saved on your harddisk.
002260*  You can locate it in the local application BIN folder
002270      SET myXmlFile TO "myCustomers.xml"
002280   
002290*  Demonstrate the usage of the WriteXml method
002300*  Write out an XML file that originated as relational data
002310      SET myENUM-XmlWriteMode 
002320		   TO PROP-IgnoreSchema OF ENUM-XmlWriteMode
002330      INVOKE myDataSet1 "WriteXml" USING BY VALUE 
002340       myXmlFile, myENUM-XmlWriteMode
002350 
002360*  Demonstrate the usage of the ReadXml method
002370*  Load a 2nd Dataset from the saved XML file
002380		INVOKE DataSet "NEW" RETURNING myDataSet2
002390      INVOKE myDataSet2 "ReadXml" USING BY VALUE myXmlFile
002400 
002410*  Demonstrate the usage of the GETXML method
002420*  Extract data from the Dataset in XML format
002430     INVOKE myDataSet2 "GetXml" RETURNING mySys-String
002440     SET myDisplayString TO mySys-String
002450     DISPLAY myDisplayString.
002460     
002470 END PROGRAM MAIN.