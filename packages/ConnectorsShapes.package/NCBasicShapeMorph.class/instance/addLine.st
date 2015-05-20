submorphs-add/remove
addLine
	| line |
	self addMorphBack: ((line := PolygonMorph
					vertices: {self innerBounds bottomLeft. self innerBounds bottomRight}
					color: self color
					borderWidth: borderWidth
					borderColor: self borderColor)
						hResizing: #rigid;
						vResizing: #rigid;
						disableTableLayout: true;
						lock;
			 			yourself).
	self adjustSubmorphPositions.
	^ line
