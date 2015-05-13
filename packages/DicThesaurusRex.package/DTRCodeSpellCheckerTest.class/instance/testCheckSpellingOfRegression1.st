tests
testCheckSpellingOfRegression1
	self 
		assert: (Dictionary newFromPairs: #(21 'Dont' 59 'MRP' 117 'MRP'))
		equals: (sut checkSpellingOf: 'testUnCamelCaseWordsDontSeparateAcronyms
	self assert: #(''MRP'' ''Camel'' ''Case'' ''Tests'') asOrderedCollection equals: ''MRPCamelCaseTests'' asUnCamelCasedWords')