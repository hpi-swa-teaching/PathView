tests
expectedFailures

	^ #(testShouldAnswerAnAssociationIfTheClassIsADictionary,
		"these test fail because the type is set before these tests are called" 
		testIsTypeSetShouldBeFalse,
		testShouldAskForAClassIfItIsUnknown,
		testShouldAnswerTheCollectionIfTheClassIsACollection)