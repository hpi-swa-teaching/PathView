layout force-based
stopLayouting
	"If the process terminates itself, the terminate-call is the last thing, that happens here.
	The variables (especially layoutProcess itself) must be set before that call."
	
	| terminatedProcess |
	self useSeparateLayoutProcess
		ifTrue: [
			terminatedProcess := layoutProcess.
			layoutProcess := nil.
			terminatedProcess ifNotNil: [
				terminatedProcess terminate ] ]
		ifFalse: [
			layoutProcess := false. "See isLayoutRunning"
			self stopStepping ].
	layoutingLocked := false.
	self clearAllVectors.
	self
		changed: #isLayoutRunning;
		changed: #isLayoutNotRunning;
		changed: #isLayoutUnlocked