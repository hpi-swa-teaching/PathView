testing
test03BrowserAdditionalButtons
	self assert: (self existMorphOf: PluggableButtonMorphPlus named: 'coverage').
	self assert: (self existMorphOf: PluggableButtonMorphPlus named: 'path views').