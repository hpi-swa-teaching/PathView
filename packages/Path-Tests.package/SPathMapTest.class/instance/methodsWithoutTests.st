test results
methodsWithoutTests
	| tests |
	tests := self allTests.
	^ SProject current allMethods reject: [:each | tests includes: each]