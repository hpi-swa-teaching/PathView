list reset
classListIndex: anInteger 
	self codeSource: nil.
	super classListIndex: anInteger.
	self selectedMethodReference ifNil: [self resetCaches].
	anInteger = 0
		ifFalse: [SPMPathMap allInstances do: [:each |
					[(each getClassMorph: self selectedClass) highlight] on: Error do: []]].