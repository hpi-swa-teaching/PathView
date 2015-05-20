label
addLabel
	| labelString |
	labelString := FillInTheBlank request: 'Enter label:'.
	labelString isEmpty ifFalse: [ self addLabel: labelString ]