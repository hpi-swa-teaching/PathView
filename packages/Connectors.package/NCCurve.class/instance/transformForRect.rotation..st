drawing
transformForRect: outsideRect rotation: angle 
	| requiredScale newRect |
	newRect := self bounds scaleAndTranslateToFitInside: outsideRect.
	requiredScale := newRect extent asFloatPoint / self bounds extent.
	^((((MatrixTransform2x3 withOffset: outsideRect center) 
		composedWithLocal: (MatrixTransform2x3 withRotation: angle)) 
			composedWithLocal: (MatrixTransform2x3 withOffset: outsideRect extent / -2)) 
			composedWithLocal: (MatrixTransform2x3 withScale: requiredScale asPoint)) 
			composedWithLocal: (MatrixTransform2x3 
					withOffset: self bounds origin negated)