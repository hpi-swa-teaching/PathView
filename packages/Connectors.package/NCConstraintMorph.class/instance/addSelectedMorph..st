menus
addSelectedMorph: anEvent
	"Allow the user to select a new submorph and add it to me"
	| hand handle |
	hand := anEvent hand.
	handle := NewHandleMorph new 
		followHand: hand
		forEachPointDo: [ :newPoint |  ]
		lastPointDo: [ :newPoint | | targets choice |
			targets := (self world morphsAt: newPoint) copyWithoutAll: { self . handle }.
			targets := targets reject: [ :ea | ea isPlayfieldLike ].
			targets isEmpty
				ifFalse: [ "choice := targets size = 1
					ifTrue: [ 1 ]
					ifFalse: [ (PopUpMenu labelArray: (targets collect: [ :ea | ea name ]))
							startUpWithCaption: 'Select Morph' ].
					choice > 0
						ifTrue: [ self addShape: (targets at: choice) ]"
					self addShape: targets first.
					self layoutChanged; changed.
				].
		].
	anEvent hand attachMorph: handle.
	handle startStepping.