evaluating
contextStep: context
	self currentPc: context pc.
	self compiledMethod == context method
		ifTrue: [	self coveredByteCodes add: context pc]