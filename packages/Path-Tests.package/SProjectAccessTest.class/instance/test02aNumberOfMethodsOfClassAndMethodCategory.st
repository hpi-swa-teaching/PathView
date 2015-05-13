metric tests
test02aNumberOfMethodsOfClassAndMethodCategory

	self assert: (self project 
					numberOfMethodsOfClass: ClockTimer 
					methodCategory: 'accessing') = 6.
	self assert: (self project 
					numberOfMethodsOfClass: ClockTimer 
					methodCategory: 'initialize-release') = 1.
