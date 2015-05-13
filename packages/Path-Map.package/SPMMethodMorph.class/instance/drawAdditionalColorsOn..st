drawing
drawAdditionalColorsOn: aCanvas
	| offset rect orgRect cornRect |
	super drawOn: aCanvas.
	offset := ((self bounds width - 2) / self additionalColors size) rounded.
	offset <= 2 ifTrue: [^ self]. 
	self additionalColors withIndexDo: [:each :index | 
		(index = 1)
			ifTrue: [orgRect := (((index - 1) * offset) + 1)@1]
			ifFalse: [orgRect := (((index - 1) * offset))@1].
		(index = self additionalColors size)
			ifTrue: [cornRect := ((self additionalColors size - index * offset) + 1)@1]
			ifFalse: [cornRect := (self additionalColors size - index * offset)@1].
		rect := self bounds insetBy: (Rectangle origin: orgRect corner: cornRect).
		aCanvas fillRectangle: rect color: each].