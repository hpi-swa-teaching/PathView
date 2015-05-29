get class tests
testShouldAnswerTheCollectionIfTheClassIsACollection

	"(testProject typesBucket membersFor: testClass) 
		atAllPut: (SContainerType new
					typeOfContainer: OrderedCollection new;
					typeOfElements: testClass;
					yourself).
	[self assert: [instance getClass typeOfElements = testClass].
	self assert: [instance getClass typeOfContainer isKindOf: OrderedCollection]]
		ensure: [(testProject typesBucket membersFor: testClass) atAllPut: testClass]"