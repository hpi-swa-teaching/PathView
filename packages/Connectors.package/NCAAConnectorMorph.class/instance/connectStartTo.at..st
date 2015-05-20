connection
connectStartTo: aMorph at: aPoint 
	| old |
	old := constraints first input.
	aMorph
		ifNil: [constraints first input: nil]
		ifNotNil: [ constraints first attachTo: aMorph at: aPoint.
	self trigger: #connectEndTo with: aMorph ].
	^ old