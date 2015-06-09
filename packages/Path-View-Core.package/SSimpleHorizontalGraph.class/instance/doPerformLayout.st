layout
doPerformLayout
	
	| currentPos |
	currentPos := 0.
	self nodes do: [ :node |
		node position: currentPos @ 0.
		currentPos := currentPos + node width + self class minimumSpacing ].