instance creation
newUMLClassSymbol
	"Answer an instance of me ready for use in a class diagram"
	"NCSTUMLDiagramMorph newUMLClassSymbol openInHand"
	| newMe fonts |
	(newMe := self new)
		color: (Color yellow muchLighter);
		borderColor: Color black;
		borderWidth: 2;
		name: #Class;
		preferredConnection: #connectToNearestPointToCenter.
	fonts := TextStyle named: #ComicBold.
	fonts ifNotNil: [ 
		(newMe textMorphAt: 1)
			beAllFont: (fonts fontOfSize: 19)
	].
	(newMe textMorphAt: 1)
		centered.
	newMe adjustSubmorphPositions.
	^newMe
		
