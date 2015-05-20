*connectors-geometry
bottomLeftCorner
	"Take rounded corners into account"
	^self wantsRoundedCorners
		ifTrue: [ bounds bottomLeft + (2@-2) ]
		ifFalse: [ bounds bottomLeft ]