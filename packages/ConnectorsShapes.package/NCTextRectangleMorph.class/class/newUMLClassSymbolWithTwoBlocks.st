instance creation
newUMLClassSymbolWithTwoBlocks
	"Answer an instance of me ready for use in a class diagram"
	"NCTextRectangleMorph newUMLClassSymbolWithTwoBlocks openInHand"
	^self newUMLClassSymbol addTextBlock: ''; 
		layoutChanged; fullBounds;
		yourself.