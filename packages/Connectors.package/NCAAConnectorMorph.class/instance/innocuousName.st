naming
innocuousName 
	| newName |
	newName := super innocuousName.
	^(newName beginsWith: 'AA')
	 ifTrue: [ newName copyFrom: 3 to: newName size ]
		ifFalse: [ newName ]