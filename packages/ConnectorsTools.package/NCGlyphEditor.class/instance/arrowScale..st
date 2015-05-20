accessing
arrowScale: aPoint
	| |
	arrowScale := aPoint asPoint asFloatPoint.
	sampleLine ifNotNil: [  sampleLine arrowScales: { arrowScale. arrowScale } ].