dropping/grabbing
justDroppedInto: newOwner event: evt
	"Determine whether we need to be embedded or attached."
	(newOwner dropEnabled and: [ newOwner isPlayfieldLike not ])
		ifTrue: [ ^super justDroppedInto: newOwner event: evt ].
	(newOwner rootMorphsAtGlobal: evt cursorPoint)
		do: [ :ea | ea ~~ self ifTrue: [ ^self attachTo: ea at: evt cursorPoint ] ].
	super justDroppedInto: newOwner event: evt