meta-actions
duplicateMorph: evt
	| newMorph |
	newMorph := super duplicateMorph: evt.
	newMorph setProperty: #justDuplicated toValue: true.
	^newMorph