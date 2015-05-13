testing
testPrintViewAndProfile

	self rootNode selectedView: #objects.
	self rootNode views at: #objects put: 'a Test'.
	self rootNode selectedProfile: #%.
	self rootNode profiles at: #% put: '100%'.
	self assert: self rootNode asString =  '[100%]a Test>>testDoNothing'.