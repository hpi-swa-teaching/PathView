*connectorstools-private
displayedAttachmentPoints
	^self pasteUpMorphOrWorld submorphs
		select: [ :ea | (ea isAttachmentPointAdjuster) and: [ ea target == self ] ]
