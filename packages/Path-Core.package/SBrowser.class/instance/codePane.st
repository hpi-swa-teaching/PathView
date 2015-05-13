accessing
codePane
	^ self dependents detect: [:each | each knownName = 'codePane']