drawing
drawOn: aCanvas
	drawBroomIcon
		ifTrue: [ aCanvas paintImage: self class broomIcon at: self position ]
		ifFalse: [ self drawPlusOn: aCanvas ].
