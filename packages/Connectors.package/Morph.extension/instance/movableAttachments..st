*connectors-attachment points
movableAttachments: aBoolean
	"If aBoolean is true, then allow a connection to choose the nearest of my attachment points.
	If aBoolean if false, then the attachment point chosen at connection time will be permanent"
	aBoolean
		ifTrue: [ self removeProperty: #movableAttachments ]
		ifFalse: [ self setProperty: #movableAttachments toValue: false ]