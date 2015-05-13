drawing
stringRectangle

	self isCodeExpanded ifFalse: [^ super stringRectangle].
	^ bounds origin corner: (bounds corner x @ (bounds origin y + self class itemHeight))