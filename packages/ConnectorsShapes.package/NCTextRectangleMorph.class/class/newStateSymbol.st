instance creation
newStateSymbol
	"Answer an instance of me ready for use in a state diagram"
	"NCTextRectangleMorph newStateSymbol openInHand"
	^NCUMLDiagramMorph new
		color: (Color yellow muchLighter);
		borderColor: Color black;
		cornerStyle: #rounded;
		borderWidth: 2;
		name: #State;
		setTextAt: 1 to: 'State';
		preferredConnection: #connectToNearestPointToCenter;
			layoutChanged; fullBounds;
			yourself.