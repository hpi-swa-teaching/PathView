geometry-curves
contours
	contours ifNotNil: [^contours].
	(vertices size = 2 and: [vertices first = vertices second]) 
		ifTrue: [^contours := #()].
	self error: 'should be set'.