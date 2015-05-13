fault localization
jaccardSuspiciousness
	self allFailures = 0 ifTrue: [^ 0.0].
	^ self failuresAtMethod / (self allFailures + self passedAtMethod)