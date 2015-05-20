menus
changeLineWidth: evt 
	"Copied from BorderedMorph"

	| newWidth |
	(owner notNil and: [self visible]) 
		ifTrue: [^self changeLineWidthInteractively: evt].
	newWidth := FillInTheBlank request: 'New line width?'
				initialAnswer: self lineWidth asString.
	newWidth isEmpty ifTrue: [ ^self ].
	newWidth := newWidth asNumber.
	self lineWidth: newWidth