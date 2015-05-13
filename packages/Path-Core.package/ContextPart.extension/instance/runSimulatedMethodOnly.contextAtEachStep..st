*Path-Core
runSimulatedMethodOnly: aBlock contextAtEachStep: block2
	| current |
	aBlock hasMethodReturn
		ifTrue: [self error: 'simulation of blocks with ^ can run loose'].
	current := aBlock asContext.
	current pushArgs: Array new from: self.
	[current == self]
		whileFalse:
			[(current sender receiver class inheritsFrom: MwMethodWrapper)
					ifTrue: [current := current step] "Ignore byte codes of method wrappers"
					ifFalse: [block2 value: current.
						 	current := current quickStep]].
	^self pop