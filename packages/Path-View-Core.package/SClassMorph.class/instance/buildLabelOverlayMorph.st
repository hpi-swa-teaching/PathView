accessing
buildLabelOverlayMorph 

	| containerMorph stringMorph |
	stringMorph :=(StringMorph contents: klass name)
		color: Color black;
		yourself. 

	containerMorph := RectangleMorph new
		color: Color white;
		addMorphFront: stringMorph.

	^ containerMorph
