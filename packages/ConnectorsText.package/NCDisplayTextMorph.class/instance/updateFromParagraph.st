event handling
updateFromParagraph

	super updateFromParagraph.
	self hasFocus ifFalse: [ ^self ].

	(self isAutoFit and: [ wrapFlag not ])
		ifTrue: [ self refreshParagraph ].
	self editor.
