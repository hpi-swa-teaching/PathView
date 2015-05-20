instance creation
newUMLClassSymbolWithThreeBlocks
	"Answer an instance of me ready for use in a class diagram"
	"NCTextRectangleMorph newUMLClassSymbolWithThreeBlocks openInHand"
	^self newUMLClassSymbol addTextBlock: ''; addTextBlock: ''; 
	layoutChanged; fullBounds;
	yourself.