reengineering
refactorClassVariable: classVarRefactoringClass instanceVariable: instanceVarRefactoringClass
	
	| refactoringClass |
	refactoringClass :=
		self type == #class
			ifTrue: [ classVarRefactoringClass ]
			ifFalse: [ 
		self type == #instance
			ifTrue: [ instanceVarRefactoringClass ]
			ifFalse: [ ^ self ] ].
	SRefactoring execute:
		(refactoringClass
			variable: self variableName
			class: self visualizedClass).