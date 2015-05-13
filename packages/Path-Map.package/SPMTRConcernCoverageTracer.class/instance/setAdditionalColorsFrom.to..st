visualization
setAdditionalColorsFrom: aCollection to: aMorph
	aCollection	size <= 1 ifTrue: [^ self].
	aMorph additionalColors: (aCollection collect: [:each | 
													self project concerns colors at: each]).