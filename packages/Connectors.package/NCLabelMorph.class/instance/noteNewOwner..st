private
noteNewOwner: aMorph
	super noteNewOwner: aMorph.

	"(aMorph notNil and: [ aMorph isHandMorph ])
		ifTrue: [ label isLocked ifFalse: [aMorph newKeyboardFocus: label] ]."