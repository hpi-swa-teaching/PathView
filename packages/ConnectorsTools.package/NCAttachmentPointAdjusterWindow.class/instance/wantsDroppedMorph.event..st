dropping/grabbing
wantsDroppedMorph: aMorph event: evt 
	| retval |
	retval := owner notNil
		and: [(super wantsDroppedMorph: aMorph event: evt)
				and: [target isNil
						or: [ aMorph isAttachmentPointAdjuster ]]].
	^retval
