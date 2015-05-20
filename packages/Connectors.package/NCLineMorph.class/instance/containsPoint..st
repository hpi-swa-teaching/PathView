geometry testing
containsPoint: aPoint
	(super containsPoint: aPoint) ifFalse: [^ false].
	(self hasProperty: #errorOnDraw) ifTrue: [^true].
	
	(self arrowForms anySatisfy: [:f |
		 "(f pixelValueAt: aPoint - f offset) > 0"
		(Rectangle origin: f offset extent: f extent) containsPoint: aPoint
	 ])
		ifTrue: [^true ].

	self lineSegmentsDo:
		[:p1 :p2 |
		(aPoint onLineFrom: p1 to: p2 within: (10 max: (self fullLineWidth + 4) / 2))
				ifTrue: [^ true]].
			
	^ false