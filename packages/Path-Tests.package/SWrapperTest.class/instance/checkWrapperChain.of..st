private
checkWrapperChain: anArray of: aMethodRef

	| item |
	item := aMethodRef compiledMethod.
	anArray do: [:each |
		each == #Wrapper
			ifTrue: [	self assert: item isMwMethodWrapper.
					item := item clientMethod].
		each == #Original
			ifTrue: [self deny: item isMwMethodWrapper]].