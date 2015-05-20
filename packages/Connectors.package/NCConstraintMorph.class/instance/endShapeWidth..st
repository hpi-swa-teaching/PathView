attachments
endShapeWidth: aWidth
	self submorphsDo: [ :ea | ea allMorphsDo: [ :sm | sm endShapeWidth: aWidth ] ].
	self computeLineAttachmentPoint.
	self forceRedraw.