accessing
labelOverlayMorph 

	^ labelOverlayMorph ifNil: [ 
		labelOverlayMorph := self buildLabelOverlayMorph ]