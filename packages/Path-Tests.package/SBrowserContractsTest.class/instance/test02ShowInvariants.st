testing
test02ShowInvariants
	self browser setClass: SVisibleClock selector: nil.
	self assert: self browser hasInvariants.
	self deny: self browser invariantsShown.
	self browser toggleInvariants.
	self assert: self browser invariantsShown.	
	self browser toggleInvariants.
	self deny: self browser invariantsShown.