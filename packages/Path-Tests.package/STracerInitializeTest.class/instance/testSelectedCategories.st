testing
testSelectedCategories

	self assert: SProject current categories size = 1.
	self assert: (SProject current categories includes: #'Path-Tests-Sandbox').