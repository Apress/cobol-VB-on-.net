Module Module1

	'This is an example of how the CLR Promotes Objects
	'from one HEAP Generation to the next - as an object ages

	Sub Main()

		Console.WriteLine _
		("Begin Heap Generation Visual Basic.NET Example")
		Console.WriteLine(String.Empty)

		'Instantiate Object from .NET Framework Classes
		Dim obj As New Object()

		'Execute GC "GetGeneration" Method and ToString Method
		Console.WriteLine _
		("HEAP Generation of obj BEFORE FIRST collection: " _
		& GC.GetGeneration(obj).ToString)

		'Manually Induce Garbage Collection on all Generations 
		GC.Collect()

		'Execute GC "GetGeneration" Method and ToString Method
		Console.WriteLine _
		("HEAP Generation of obj AFTER FIRST collection: " _
		& GC.GetGeneration(obj).ToString)

		'Manually Induce Garbage Collection on all Generations 
		GC.Collect()

		Console.WriteLine _
		("HEAP Generation of obj AFTER SECOND collection: " _
		& GC.GetGeneration(obj).ToString)

		'Remove Object reference
		'This will make it eligible for Garbage Collection
		obj = Nothing

		'Manually Induce Garbage Collection on all Generations 
		GC.Collect()

		'Optionally, I could have induced a collection
		'specifically on the generation # containing my obj.
		'Using the syntax GC.Collect(1) to target generation 1

		Console.WriteLine("Press Enter to Exit")
		Console.ReadLine()

	End Sub

End Module
