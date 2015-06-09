layout force-based
startLayouting
	
	self isLayoutRunning ifFalse: [
		self clearAllVectors.
		self useSeparateLayoutProcess
			ifTrue: [ layoutProcess := [ self layoutLoop ] fork ]
			ifFalse: [ layoutProcess := true. self startStepping ]. "See isLayoutRunning"
		self
			changed: #isLayoutRunning;
			changed: #isLayoutNotRunning ].