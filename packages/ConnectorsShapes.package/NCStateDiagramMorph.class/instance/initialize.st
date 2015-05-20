initialization
initialize
	"Answer an instance of me ready for use in a state diagram"
	"NCStateDiagramMorph new openInHand"
	super initialize.
	self
		color: self defaultColor;
		borderColor: self defaultBorderColor;
		cornerStyle: #rounded;
		borderWidth: 2;
		preferredConnection: #connectToNearestPointToCenter;
		redButtonGestureDictionaryOrName: #StateSymbol