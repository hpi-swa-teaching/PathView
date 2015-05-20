*connectors-connection
lineAttachmentOffset: aPoint
	"Set the relative offset from my rotation center at which a line is to attach if I am being used as a line end adornment"
	^self setProperty: #lineAttachmentOffset toValue: aPoint.