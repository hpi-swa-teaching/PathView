transforming
moveMethod
	"This method is copied from the super-class, then modified to use our own version of the 
	MoveMethodRefactoring."
	
	| variable refactoring |
	variable := self selectVariableToMoveMethodTo: extractedMethodSelector
				class: class.
	variable isNil ifTrue: [self refactoringError: 'Did not extract method'].
	refactoring := (SMoveMethodRefactoring 
				model: self model
				selector: extractedMethodSelector
				class: class
				variable: variable)
				targetClass: targetClass;
				yourself.
	self performComponentRefactoring: refactoring