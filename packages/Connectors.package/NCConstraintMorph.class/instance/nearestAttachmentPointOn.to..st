connection-callbacks
nearestAttachmentPointOn: m to: relPoint
	^m attachmentPointNearest: (self point: relPoint relativeTo: m)