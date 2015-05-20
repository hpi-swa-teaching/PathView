buttons
attachmentModeString
	target ifNil: [ ^'--' ].
	^target movableAttachments
		ifTrue: [ 'Make non-movable' ]
		ifFalse: [ 'Make movable' ]
