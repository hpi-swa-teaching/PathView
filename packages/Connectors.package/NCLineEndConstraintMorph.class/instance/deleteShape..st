menus
deleteShape: aMorph
	super deleteShape: aMorph.
	self computeLineAttachmentPoint.
	self forceRedraw.