preconditions
preconditions
	| selector method |
	method := RBParser parseMethod: source
				onError: 
					[:string :position | 
					^RBCondition 
						withBlock: [self refactoringError: 'The sources could not be parsed']].
	selector := method selector.
	.
	selector isNil ifTrue: [self refactoringError: 'Invalid source.'].
	
	"we are doing reengineering, not refactoring especially thus only check if the class itself is not implementing selector already"
	^(RBCondition 
		definesSelector: selector
		in: (self model classFor: class) ) not