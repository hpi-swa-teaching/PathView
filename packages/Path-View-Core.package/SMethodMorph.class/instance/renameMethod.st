reengineering
renameMethod
	| answer oldMethodName newMethodName oldArguments argumentPermutation senders |
	
	answer := self confirmRenameMethod.	
	(answer = 5) ifTrue: [^self].
	(answer = 1) ifTrue: [senders := #all].
	(answer = 2) ifTrue: [senders := #package].
	(answer = 3 or: [answer = 4]) ifTrue: [senders := #none].
	
	oldArguments := 
		(RBParser parseMethod: (klass methodHeaderFor: methodName)) argumentNames.
	oldMethodName := RBMethodName selector: methodName arguments: oldArguments.
	
	(newMethodName := UIManager default 
								request: 'New Method Name (do not rename parameter!)'
								initialAnswer: oldMethodName printString) ifEmpty: [ ^ self ].
	newMethodName := RBParser parseMethod: newMethodName.
	newMethodName selector = oldMethodName selector
		ifTrue: [^self].    

	argumentPermutation := newMethodName arguments collect: 
								[ :each | oldArguments indexOf: each token value ].
	
	SRefactoring execute: (SRenameMethodRefactoring
								renameMethod: methodName asSymbol
								in: klass
								to: newMethodName selector
								permutation: argumentPermutation
								withSenders: senders).
								
	answer = 4 ifTrue: [
		SystemNavigation default browseAllCallsOn: methodName ].  