instance creation
newUMLClassSymbolWithThreeBlocks
	"Answer an instance of me ready for use in a class diagram"
	"NCSTUMLDiagramMorph newUMLClassSymbolWithThreeBlocks openInHand"
	^self newUMLClassSymbol addTextBlock: ''; addTextBlock: ''; yourself.