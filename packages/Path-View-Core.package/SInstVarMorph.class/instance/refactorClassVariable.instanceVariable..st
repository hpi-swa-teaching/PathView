reengineering
refactorClassVariable: classVarRefactoringClass instanceVariable: instanceVarRefactoringClass
	
	| refactoringClass |
	refactoringClass :=
		self variableType == #class
			ifTrue: [ classVarRefactoringClass ]
			ifFalse: [ 
		self variableType == #instance
			ifTrue: [ instanceVarRefactoringClass ]
			ifFalse: [ ^ self ] ].
	SRefactoring execute:
		(refactoringClass
			variable: self variableName
			class: self visualizedClass).