testing
test04ShowPostconditions
	self browser setClass: SVisibleClock selector: #initInFrame:.
	self assert: self browser hasConditions.
	self deny: self browser postconditionsShown.
	self browser togglePostconditions.
	self assert: self browser postconditionsShown.	
	self browser togglePostconditions.
	self deny: self browser postconditionsShown.