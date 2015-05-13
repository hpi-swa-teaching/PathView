classes
testClasses
	^ self allClasses select: [:each | each inheritsFrom: TestCase]