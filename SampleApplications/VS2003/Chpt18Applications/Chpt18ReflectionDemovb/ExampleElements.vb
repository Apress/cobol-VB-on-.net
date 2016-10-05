'This Class was created simply to provide a variety of TYPES
'for the Reflection Demo
Public Class ReflectionClassA
    Private myArrayList As New ArrayList()
    Friend myFriendVar As String
    Public Shared mySharedVar As Boolean
    Protected myProtectedVar As Long
    Protected Friend myProtectedFRVar As Long

    Structure AStructure
        Public myStrucInteger As Integer
        Dim myStrucPubString As String
        <VBFixedString(10)> Private myStrucPriString As String
    End Structure

    Public Sub New(ByVal afield As ArrayList)
        MyBase.new()
        myArrayList = afield
    End Sub

	Public Sub New(ByVal afield As ArrayList, _
	ByVal bfield As ArrayList)
		MyBase.new()
		myArrayList = bfield
	End Sub

	Dim myArray As String() = {"A", "B", "C"}

	Public Property Name() As String()
		Get
			Return myArray
		End Get
		Set(ByVal Value() As String)
			If Value(0) <> "" Then
				myArray(0) = Value(0)
			End If
		End Set
	End Property


	Public Enum ScaleOfDifficulty
		VeryEasy = 1
		Easy = 2
		SlightChallenge = 3
		Challenging = 4
		Difficult = 5
		VeryDifficult = 6
	End Enum


	Public Class NestedClassA
		Private myShort As Int16
		Private myInt As Int32
		Private myLong As Int64
		Public myPublicShort As Int16
		Public myPublicInt As Int32
		Public myPublicLong As Int64
		Dim myArrayInSideOfClass As String() _
		= {"A", "B", "C", "D", "E", "F"}

		Public Sub myFirstSub()
			Static myStaticVar As Integer
			For myInt = 0 To 1
				'Do nothing
			Next
		End Sub

	End Class



End Class
