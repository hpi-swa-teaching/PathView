*connectors-geometry
bottomRightCorner
	"Take rounded corners into account"
	^self wantsRoundedCorners
		ifTrue: [ bounds bottomRight + (-2@-2) ]
		ifFalse: [ bounds bottomRight ]