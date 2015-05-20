labeling
addLabel: text at: aPoint
	| label |
	label := (self labelClass new string: text).
	label
		attachTo: self at: aPoint;
		align: label center with: aPoint;
		dieWithInput: true.
	self pasteUpMorphOrWorld addMorph: label.
	^label