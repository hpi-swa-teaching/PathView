computation
biggestNodeIn: collectionOfNodes
	
	collectionOfNodes ifEmpty: [ ^ nil ].
	^ collectionOfNodes
		inject: collectionOfNodes anyOne
		into: [ :biggest :each |
			each extent > biggest extent ifTrue: [ each ] ifFalse: [ biggest ] ] "test"