connection
connectFinishTo: aMorph at: aPoint 
	| end old |
	old := (end := constraints last) input.
	aMorph
		ifNil: [end input: nil]
		ifNotNil: [end attachTo: aMorph at: aPoint.
			self trigger: #connectEndTo with: aMorph].
	^ old