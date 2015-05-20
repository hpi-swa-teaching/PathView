connection-callbacks
nearestAttachmentPointOn: m
	^m attachmentPointNearest: (self point: self center relativeTo: m)