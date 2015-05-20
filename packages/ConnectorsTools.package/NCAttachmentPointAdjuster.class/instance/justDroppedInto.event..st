stepping and presenter
justDroppedInto: aMorph event: evt
	| griddedPos |
	((aMorph ~~ target pasteUpMorphOrWorld) or: [ (aMorph isKindOf: NCAttachmentPointAdjusterWindow) not ])
				ifTrue: [ ^self delete ].
	griddedPos := self griddedPoint: evt position.
	self center ~= griddedPos
		ifTrue: [ self center: griddedPos ].
