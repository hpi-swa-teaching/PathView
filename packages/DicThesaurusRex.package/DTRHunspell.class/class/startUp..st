system startup
startUp: resuming
	resuming
		ifTrue: [self allSubInstancesDo: [:hunspell | hunspell invalidate]].
	^ super startUp: resuming