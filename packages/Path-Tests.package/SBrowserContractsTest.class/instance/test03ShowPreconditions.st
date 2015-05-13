testing
test03ShowPreconditions
	self browser setClass: SVisibleClock selector: #initInFrame:.
	self assert: self browser hasConditions.
	self deny: self browser preconditionsShown.
	self browser togglePreconditions.
	self assert: self browser preconditionsShown.	
	self browser togglePreconditions.
	self deny: self browser preconditionsShown.