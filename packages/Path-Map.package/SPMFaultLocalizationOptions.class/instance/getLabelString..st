visualization
getLabelString: aPosition
	| label |
	label := ''.
	label := (aPosition x * 100) asInteger asString, '% suspicious'.
	self singlePointOfFault
		ifFalse: [
			label := label, String cr.
			aPosition y <= 0.1
				ifTrue: [label := label, '100% confidence']
				ifFalse: [label := label, ((1.0 - ((aPosition y - 0.1) / 0.9)) * 100) 
										asInteger asString, '% confidence']].
	^ label