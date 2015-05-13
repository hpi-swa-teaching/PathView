spec commands
selectedConcernAt: anIndex put: aBoolean
	(self selectedConcerns at: anIndex) value: aBoolean.
	self changed: #selectedConcernAt:.
	self redrawPathMapIfPossible.
	^ anIndex