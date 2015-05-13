tests
testCheckSpellingOfWithCamelCase
	self 
		assert: (Dictionary newFromPairs: #(8 'Tezt'))
		equals: (sut checkSpellingOf: 'thisIsATeztWord');				
		assert: (Dictionary newFromPairs: #(8 'Tezt'))
		equals: (sut checkSpellingOf: 'thisIsATezt');	
		assert: (Dictionary newFromPairs: #(13 'XYZ'))
		equals: (sut checkSpellingOf: 'ourProjectIsXYZNotCalled');
		assert: (Dictionary newFromPairs: #(22 'XYZ'))
		equals: (sut checkSpellingOf: 'ourProjectIsNotCalledXYZ')