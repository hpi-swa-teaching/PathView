testing
testPrintProfile

	self rootNode selectedProfile: #%.
	self rootNode profiles at: #% put: '100%'.
	self assert: self rootNode asString =  '[100%]SSBTest>>testDoNothing'.