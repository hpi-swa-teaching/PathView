method tests
test02AllMethods
	self assert: self project allMethods asSet = self allMethodsOfObserverExample asSet
	 