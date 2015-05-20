connection-callbacks
nearestAttachmentPointOn: m
	^m attachmentPointNearest: (self nextVertexRelativeTo: m)
