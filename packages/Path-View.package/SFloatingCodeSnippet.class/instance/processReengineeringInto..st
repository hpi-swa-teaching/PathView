reengineering
processReengineeringInto: aClassMorph
	
	| aClass |
	aClass := aClassMorph visualizedClass.
	self abandon.
	SRefactoring
		execute:
			((self isComponentRefactoring: aClass)
				ifTrue: [
					(SExtractMethodToComponentRefactoring
						extract: selectionInterval
						from: originalMethod value
						in: originalMethod key)
						targetClass: aClass;
						yourself ]
				ifFalse: [
					SExtractMethodRefactoring
						extract: selectionInterval
						from: originalMethod value
						in: originalMethod key
						to: aClass ])