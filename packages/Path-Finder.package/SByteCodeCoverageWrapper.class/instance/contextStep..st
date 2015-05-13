evaluating
contextStep: context
	self compiledMethod == context method
		ifTrue: [	self coveredByteCodes add: context pc]