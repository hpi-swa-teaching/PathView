fault localization
ochiaiSuspiciousness
	self allFailures = 0.0 ifTrue: [^ 0.0].
	"Required for Null Objects"
	(self failuresAtMethod + self passedAtMethod) = 0 ifTrue: [^ 0.0].
	^ self failuresAtMethod / 
		((self allFailures * (self failuresAtMethod + self passedAtMethod)) sqrt)