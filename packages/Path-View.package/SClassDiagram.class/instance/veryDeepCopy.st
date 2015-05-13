copying
veryDeepCopy
	"Run the update hooks after copying"
	
	| copy |
	copy := super veryDeepCopy.
	copy submorphs select: #isClassDiagramMorph thenDo: #update.
	^ copy