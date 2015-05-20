text morphs-accessing
firstEmptyTextMorph
	self allMorphsDo: [ :ea | ((ea isTextMorph) and: [ ea contents size = 0 ])
		ifTrue: [ ^ea ] ].
	^nil