get class tests
testShouldAnswerTheClassIfItKnowsIt

	self assert: [instance getClass = associatedTestClass].