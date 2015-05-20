text morphs-accessing
textAt: index
	^ (self textMorphAt: index) ifNotNilDo: [ :tm | tm contents ]
