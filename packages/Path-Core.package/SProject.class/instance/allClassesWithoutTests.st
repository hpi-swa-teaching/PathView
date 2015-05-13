classes
allClassesWithoutTests
	^ self allClasses reject: [:each | each inheritsFrom: TestCase]