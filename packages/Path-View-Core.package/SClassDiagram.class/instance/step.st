layout force-based
step
	"Stepping seems odd sometimes, so be careful and do checks on our own."
	
	(self useSeparateLayoutProcess not and: [ self isLayoutRunning ])
		ifTrue: [ self layoutStep ]
		ifFalse: [ self stopStepping ] "stepping started without us calling startStepping it. Try and stop it."