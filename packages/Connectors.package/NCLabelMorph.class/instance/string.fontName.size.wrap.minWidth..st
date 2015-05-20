initialization
string: aString fontName: aName size: aSize wrap: shouldWrap minWidth: chars

	label ifNotNil: [ label delete minWidth ].
	label := shouldWrap
		ifTrue: [ self class textClass new contentsWrapped: aString ]
		ifFalse: [ self class textClass new contentsAsIs: aString ].
	label fontName: aName size: aSize.
	label releaseCachedState; changed.
	label margins: 4@4.
	self extent: label extent.
	label hResizing: #spaceFill.
	self addMorphBack: label.
