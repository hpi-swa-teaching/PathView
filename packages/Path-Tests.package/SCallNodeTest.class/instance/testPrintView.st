testing
testPrintView

	self rootNode selectedView: #objects.
	self rootNode views at: #objects put: 'a Test'.
	self assert: self rootNode asString =  'a Test>>testDoNothing'.