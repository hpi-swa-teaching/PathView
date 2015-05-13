as yet unclassified
testShouldBeExpandedByDefault
	
	instance update.
	self assert: [instance entries allSatisfy: [:morph | morph owner = instance]].