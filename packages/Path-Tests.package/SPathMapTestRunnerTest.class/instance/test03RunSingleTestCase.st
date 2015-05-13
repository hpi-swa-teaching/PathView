testing
test03RunSingleTestCase
	| methodMorph menuMorph |
	methodMorph := self methodMorph: (MethodReference 
											class: SSBTest selector: #testDoNothing).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #rerunTest on: menuMorph.
	self assert: (self methodMorph: 
			(MethodReference class: SSBTest selector: #testDoNothing)) color = 
				Color green.
	(SProject current allMethods 
		remove: (MethodReference class: SSBTest selector: #testDoNothing);
		yourself)
			do: [:each | self assert: (self methodMorph: each) color = Color white].