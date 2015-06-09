refactoring options
requestImplementorToInline: aCollection
	^ Smalltalk classNamed: (self
		chooseFrom: (aCollection collect: [ :each | each name ])
		title: 'Which implementation should be inlined?')