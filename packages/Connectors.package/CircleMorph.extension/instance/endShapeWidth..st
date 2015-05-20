*connectors
endShapeWidth: anInteger
	| oldLineAttachment oldRotationCenter |
	oldLineAttachment := self lineAttachmentOffset.
	oldRotationCenter := self rotationCenter.
	super endShapeWidth: anInteger.
	self lineAttachmentOffset: oldLineAttachment.
	self rotationCenter: oldRotationCenter.
