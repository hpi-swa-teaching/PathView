connection
connectFinishTo: aMorph 
	| old |
	old := constraints last input.
	aMorph
		ifNil: [constraints last input: nil]
		ifNotNil: [constraints last attachTo: aMorph at: aMorph center.
			self trigger: #connectEndTo with: aMorph].
	^ old