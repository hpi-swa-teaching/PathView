testing
test04bBrowserContractButtonsPreconditions
	self assert: (self existMorphOf: PluggableButtonMorphPlus named: 'post').
	self deny: self browser hasConditions.