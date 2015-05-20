menus
changeBorderWidth: evt 
	"Copied from BorderedMorph"

	| newWidth |
	(owner notNil and: [self visible]) 
		ifTrue: [^self changeBorderWidthInteractively: evt].
	newWidth := FillInTheBlank request: 'New line border width?'
				initialAnswer: self borderWidth asString.
	newWidth isEmpty ifTrue: [ ^self ].
	newWidth := newWidth asNumber.
	self borderWidth: newWidth