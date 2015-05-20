accessing
pasteUp: anObject
	pasteUp := anObject.
	layoutBox := pasteUp bounds insetBy: (100 min: anObject height / 6)