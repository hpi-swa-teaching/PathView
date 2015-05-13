layout
setPositionOf: node rowStart: xRowStart currentRowWidth: xPosition widthDictionary: widthDictionary totalHeight: totalHeight
	
	| childRowStart rowWidth newTotalHeight |
	childRowStart := xRowStart + xPosition.
	"Position the node in its row, in the middle of its assigned space in the current row."
	node position: (childRowStart + (((widthDictionary at: node) - node width) / 2)) @ totalHeight.
	
	newTotalHeight := totalHeight + node height + self class minimumSpacing.
	rowWidth := 0.
	(self childrenOf: node) do: [ :child |
		self setPositionOf: child rowStart: childRowStart currentRowWidth: rowWidth widthDictionary: widthDictionary totalHeight: newTotalHeight.
		rowWidth := rowWidth + (widthDictionary at: child) + self class minimumSpacing ].