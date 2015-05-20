meta-actions
duplicate
	| newMorph |
	newMorph := super duplicate.
	newMorph detach.
	newMorph setProperty: #justDuplicated toValue: true.
	^newMorph