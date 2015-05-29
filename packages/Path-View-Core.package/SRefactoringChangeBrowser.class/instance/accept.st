actions
accept
	| refactoring |
	self selectedChange ifNil: [
		(UIManager confirm: 'Really apply all changes at once?') ifFalse: [^ self].
		change executeNotifying: [].
		^self delete].
	refactoring := self selectedChange.
	(undos includesKey: refactoring)
		ifTrue: [(undos at: refactoring) execute.
				undos removeKey: refactoring]
		ifFalse: [undos at: refactoring put: (refactoring executeNotifying: [])].
	self changed: #refactorings.
	self changed: #acceptLabel.
	self changed: #refactoringText.