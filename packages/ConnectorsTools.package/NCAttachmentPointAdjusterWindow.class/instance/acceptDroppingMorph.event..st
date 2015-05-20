dropping/grabbing
acceptDroppingMorph: aMorph event: evt
	"this is followed by aMorph justDroppedInto: self event: evt"
	(aMorph isHandleMorph) ifTrue: [ ^self ].
	super acceptDroppingMorph: aMorph event: evt.
	(aMorph isAttachmentPointAdjuster) ifTrue: [ ^self ].
	target := aMorph.
	self initializeOriginalPositionFor: aMorph.
	joystick moveHandleToCenter.
