*connectors-connection
lineAttachmentOffset
	"Answer the relative offset from my rotation center at which a line is to attach if I am being used as a line end adornment"
	^self valueOfProperty: #lineAttachmentOffset ifAbsent: [ 0@0 ].