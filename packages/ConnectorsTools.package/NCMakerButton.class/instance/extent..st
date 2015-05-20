accessing
extent: aPoint
	super extent: aPoint.
	self sketch ifNotNilDo: [ :sketch | | newInnerBounds formExtent maxExtent |
		newInnerBounds := self bounds insetBy: 4.
		formExtent := sketch form extent.
		maxExtent := newInnerBounds extent min: self maximumImageExtent.
		formExtent := formExtent scaleToNoGreaterThan: maxExtent.
		sketch extent: (formExtent asIntegerPoint max: 1@1).
		sketch align: sketch center with: self center.
		self layoutChanged.
	].
