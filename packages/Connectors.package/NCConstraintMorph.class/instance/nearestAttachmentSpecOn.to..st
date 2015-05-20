connection-callbacks
nearestAttachmentSpecOn: m to: relPoint
	"Return the nearest attachment spec for a morph and a point relative to that morph"
	^m attachmentSpecNearest: m topLeft + relPoint