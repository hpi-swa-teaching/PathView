drawing
drawSubmorphsOn: aCanvas

	| theCanvas |
	theCanvas := SColorMappingCanvas on: aCanvas.
	theCanvas mapping: [ :aColor |
		(aColor = self class backgroundColor)
			ifTrue: [
				self isHighlighted
					ifTrue: [ highlightColor ]
					ifFalse: [ self color ] ]
			ifFalse: [
				aColor ]].
	^ super drawSubmorphsOn: theCanvas