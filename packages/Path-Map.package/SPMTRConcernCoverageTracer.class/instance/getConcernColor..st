visualization
getConcernColor: aCollection
	| maxConcerns minGrayValue |
	aCollection ifEmpty: [^ Color white].
	aCollection size = 1 ifTrue: [^ self project concerns colors at: aCollection first].
	self options specificConcernMethodsOnly ifTrue: [^ Color white].
	maxConcerns := self options getSelectedConcerns size.
	minGrayValue := self class minGrayValue.
	^ Color h: 0 s: 0.0 v: (minGrayValue - ((aCollection size / maxConcerns) * minGrayValue)).