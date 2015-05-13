fault localization
tarantulaSuspiciousness
	| passedRatio failedRatio |
	self allFailures = 0 ifTrue: [^ 0.0].
	self allPassed = 0 ifTrue: [^ 1.0].
	passedRatio := self passedAtMethod / self allPassed.
	failedRatio := self failuresAtMethod / self allFailures.
	"Required for null objects"
	(passedRatio + failedRatio) = 0 ifTrue: [^ 0.0].
	^ 1.0 - (passedRatio / (passedRatio + failedRatio))