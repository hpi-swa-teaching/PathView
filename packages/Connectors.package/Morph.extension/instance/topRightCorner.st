*connectors-geometry
topRightCorner
	"Take rounded corners into account"
	^self wantsRoundedCorners
		ifTrue: [ bounds topRight + (-2@2) ]
		ifFalse: [ bounds topRight ]