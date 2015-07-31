layout force-based
layoutLoop
	"This is designed like morphics step-system to be able to switch to it easily, if wanted (see useSeparateLayoutProcess).
	layoutStep and layoutStepTime just have to be renamed and instead of forking this method, start/stopStepping must be called."
	
	[
		layoutProcess ~= Processor activeProcess ifTrue: [ ^ self ]. "layoutProcess has been set to nil or other process."
		self layoutStep.
		self layoutStepTime ~= 0 ifTrue: [ (Delay forMilliseconds: self layoutStepTime) wait ]
	]
	repeat