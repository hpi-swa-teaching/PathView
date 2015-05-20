buttons
layoutChanged
	|  needToChange |
	needToChange := submorphs size > 1 and: [ bounds isTall
		ifTrue: [ submorphs first x ~= submorphs second x ]
		ifFalse: [  submorphs first y ~= submorphs second y  ]].
	needToChange ifTrue: [ self fixLayoutFrames ].
	^super layoutChanged.