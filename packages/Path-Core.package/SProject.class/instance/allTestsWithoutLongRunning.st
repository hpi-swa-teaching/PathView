methods
allTestsWithoutLongRunning
	^ self allTests reject: [:each | each actualClass inheritsFrom: LongTestCase]