method tests
allTestsOfObserverExample
	^ {TestDriver -> #testNoop.
	TestDriver -> #testRun} 
		inject: OrderedCollection new into: [:collection :each | 
			collection 
				add: (MethodReference class: each key selector: each value); 
				yourself]
	
	 