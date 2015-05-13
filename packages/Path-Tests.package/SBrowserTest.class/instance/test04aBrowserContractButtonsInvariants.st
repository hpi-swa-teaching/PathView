testing
test04aBrowserContractButtonsInvariants
	self assert: (self existMorphOf: PluggableButtonMorphPlus named: 'post').
	self deny: self browser hasConditions.