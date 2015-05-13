exceptionDescription
defaultAction

	self inform: 'Path tests cannot be run with multiple test suites in test runner.', 
	String cr, 
	'Please choose test suites individually or apply PathMap with the #path project.'.
	TestResource allSubclasses do: [:each | each reset].
	super defaultAction.