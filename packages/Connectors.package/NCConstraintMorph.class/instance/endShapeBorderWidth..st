attachments
endShapeBorderWidth: aWidth
	self submorphsDo: [ :ea | ea allMorphsDo: [ :sm | sm endShapeBorderWidth: aWidth ] ].
	self computeLineAttachmentPoint.
	self forceRedraw.