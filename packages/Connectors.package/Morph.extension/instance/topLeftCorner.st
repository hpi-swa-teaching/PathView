*connectors-geometry
topLeftCorner
	"Take rounded corners into account"
	^self wantsRoundedCorners
		ifTrue: [ bounds topLeft + (2@2) ]
		ifFalse: [ bounds topLeft ]