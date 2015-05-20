labeling
addUnwrappedLabel: text at: aPoint
	| label |
	label := (self labelClass new string: text wrap: false).
	label
		attachTo: self at: aPoint;
		align: label center with: aPoint;
		dieWithInput: true.
	self pasteUpMorphOrWorld addMorph: label.
	^label