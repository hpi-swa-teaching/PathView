testing
test04cBrowserContractButtonsPostconditions
	self assert: (self existMorphOf: PluggableButtonMorphPlus named: 'post').
	self deny: self browser hasConditions.