connection
connectStartTo: aMorph 
	| old |
	old := constraints first input.
	aMorph
		ifNil: [constraints first input: nil]
		ifNotNil: [
			constraints first attachTo: aMorph at: aMorph center.
			self trigger: #connectEndTo with: aMorph ].
	^ old