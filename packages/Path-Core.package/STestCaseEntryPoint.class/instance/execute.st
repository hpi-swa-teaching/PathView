execution
execute
	| createdTestResources | 
	createdTestResources := OrderedCollection new.
	self testClass resources do: [ :each |
		each isInitialized
			ifFalse: [each isAvailable ifFalse: [each signalInitializationError].
					createdTestResources add: each]].
	[self withoutTimeout
		ifTrue: [	self lastResult: (self testClass selector: self selector)
					runWithoutTimeout]
		ifFalse: [self lastResult: (self testClass selector: self selector) run]] 
			ensure: [createdTestResources do: [:each | each reset]].
	^ self lastResult