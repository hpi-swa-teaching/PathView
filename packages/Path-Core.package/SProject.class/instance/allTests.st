methods
allTests
	| tests |
	tests := OrderedCollection new.
	self testClasses do: [:testClass | 
		testClass isAbstract 
			ifFalse: [testClass inheritedTestSelectors 
						do: [:selector | tests add: (MethodReference 
													class: testClass selector: selector)]]].
	^ tests