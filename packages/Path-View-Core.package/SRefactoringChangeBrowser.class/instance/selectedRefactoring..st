accessing
selectedRefactoring: anObject
	"Set the value of selectedRefactoring"

	selectedRefactoring := anObject.
	self changed: #refactoringText.
	self changed: #selectedRefactoring.
	self changed: #acceptLabel.