get class tests
testShouldAnswerAnAssociationIfTheClassIsADictionary
	"(testProject typesBucket membersFor: testClass) 
		atAllPut: (SContainerType new
					typeOfContainer: Dictionary new;
					typeOfElements: testClass;
					typeOfKeys: Symbol;
					yourself).
	[self assert: (instance getClass = (Symbol -> testClass))]
		ensure: [(testProject typesBucket membersFor: testClass) 
					atAllPut: testClass]."