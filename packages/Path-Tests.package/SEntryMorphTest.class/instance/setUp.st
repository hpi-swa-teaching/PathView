running
setUp
	
	super setUp.
	self aboutToCreateClassMorphFor: testClass.
	classMorph := SClassMorph on: testClass.
	self aboutToSearchInstanceIn: classMorph.
	instance := classMorph allMorphs
		detect: [:m | m class = klass and: [m klass = testClass]]
		ifNone: [self detectInstanceIn: classMorph].