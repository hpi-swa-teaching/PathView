event handling
mouseMove: anEvent
	| labelString relativePosition |
	relativePosition := self convertToRelativePosition: anEvent position.
	labelString := self optionsModel
		ifNil: [(relativePosition x printShowingDecimalPlaces: 2), '@',
								(relativePosition y printShowingDecimalPlaces: 2)]
		ifNotNil: [self optionsModel getLabelString: relativePosition].
	self labelMorph createLabelMorph: labelString.
	self labelMorph position: anEvent cursorPoint + self class labelOffset.