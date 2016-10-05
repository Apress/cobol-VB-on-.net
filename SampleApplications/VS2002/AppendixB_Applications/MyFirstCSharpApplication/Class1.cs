using System;
	/// <summary>
	/// This is my first C# Application. Coding in C# is easy.
	/// </summary>
namespace MyFirstCSharpApplication
{
	/// <remarks>The use of three slashes ("///") denotes 
	/// the use of C#'s XML Documentation feature. 
	/// Notice that this entire comment block appears inside of an XML
	/// element called "remarks". There are other XML elements that you 
	/// can use (e.g. summary, example, etc.). 
	/// You can display these XML Documentation blocks by
	/// navigating to the VS.NET Main Toolbar, clicking Tools and then clicking
	/// the "Build Comment Web Pages" menu option. 
	/// After building the Comment Web Page you can save the page 
	/// as part of the applications documentation.
	/// </remarks>
	class Class1
	{
		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main(string[] args)
		{
			// Use two slash symbols ("//") for a single line comment
			/* Optionally, you can create a multi line comment block 
			 * by using a single slash followed by an asterisk ("/*").
			 * The end the comment block, use an asterisk followed by a slash
			 */
			Console.WriteLine("Hello, .NET World.");
			Console.WriteLine("I cannot believe how simple C# is!");
			
			//Execure Procedures
			DefineDataTypesSample();
			LogicSample();

			Console.WriteLine("Press Enter to Exit.");
			Console.ReadLine();
		}
		static void DefineDataTypesSample()
		{
			//Declare Data Items using C# Data Types
			short MyFirstNumberCsharp;
			int MySecondNumberCsharp;
			double MyThirdNumberCsharp;
			
            //Declare Data Items using Native .NET Data Types
			System.Int16 MyFirstNumberNative;
			System.Int32 MySecondNumberNative;
			System.Double MyThirdNumberNative;

			//Place a numeric literal in Data Item
			MyFirstNumberCsharp = 32767;
			MySecondNumberCsharp = 32767;
			MyThirdNumberCsharp = 32767;

			MyFirstNumberNative = 32767;
			MySecondNumberNative = 32767;
			MyThirdNumberNative = 32767;

			//Write out contents of each variable
			Console.WriteLine("MyFirstNumberCsharp= {0}", 
				MyFirstNumberCsharp);
			Console.WriteLine("MySecondNumberCsharp= {0}", 
				MySecondNumberCsharp);
			Console.WriteLine("MyThirdNumberCsharp= {0}", 
				MyThirdNumberCsharp);
			Console.WriteLine("MyFirstNumberNative= {0}", 
				MyFirstNumberNative);
			Console.WriteLine("MySecondNumberNative= {0}", 
				MySecondNumberNative);
			Console.WriteLine("MyThirdNumberNative= {0}", 
				MyThirdNumberNative);
		}
		static void LogicSample()
		{
			//*** Declare Data Items using .NET Data Types
			System.String MYString;
			System.Int32 MYInteger;
			System.Boolean MYBoolean = false;
			System.DateTime systemDate;
	        
			//*** Declare Data Items with C# Data Types
			int MyIndex = 0;
			int MySecondIndex;
			int MyAccum = 0;
			bool MyFlag = false;
			string MyFixedLengthString;
	         
			//*** Demonstrate creation of String Array
			string[] MonthValues = 
			{"January", "February", "March", 
              "April", "May", "June",
			 "July", "August", "September", 
             "October", "November", "December"};
	        
			//*** Demonstrate Intrinsic Function accessing System Date
			systemDate = System.DateTime.Now;
			
			Console.WriteLine("Today is {0}" ,
				systemDate.ToShortDateString());
	        
			//*** Demonstrate Booleans, Constants, and Conditional/Computational Logic
	        
			do 
			{
				MyIndex += 1;
				if (MyIndex > 12)
				{
					MYBoolean = true;
					MyFlag = MYBoolean;
				}
			} while (MyFlag != true);
	        
			if (MyFlag == true) 
			{
			MYString = "The Boolean is now set to TRUE";
			MyFixedLengthString = MYString;
			Console.WriteLine(MyFixedLengthString);
			}

			//*** Demonstrate usage Conditional and Computational Logic
			for (MySecondIndex = 1; MySecondIndex <= MyIndex; MySecondIndex++)
			{
				MyAccum = MySecondIndex += 1;
			}
			MYInteger = MyAccum;
			
			//*** Demonstrate Intrinsic Functions, Conditional/Computational Logic
			
			MyIndex = 1;
			MyFixedLengthString = String.Empty;
			for (int x = 0; x <= 11; x++)
			{
				switch (MonthValues[x])
				{
					case "December":
					case "January":
					case "February":
						Console.WriteLine
							(string.Concat(MonthValues[x],
							" is ","Winter"));
						break;
					case "March":
					case "April":
					case "May":
						Console.WriteLine
							(string.Concat(MonthValues[x],
							" is ","Spring"));
						break;
					case "June":
					case "July":
					case "August":
						Console.WriteLine 
							(string.Concat(MonthValues[x],
							" is ","Summer"));
						break;
					case "September":
					case "October":
					case "November":
						Console.WriteLine
							(string.Concat(MonthValues[x],
							" is ","Autumn"));
						break;
					default:
						Console.WriteLine 
						("A logic exception");
						break;
				}
			}
		}
	}
}
