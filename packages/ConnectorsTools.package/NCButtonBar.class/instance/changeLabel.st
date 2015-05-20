menus
changeLabel
	| label labelString |
	label := self label.
	label ifNil: [ ^self ].
	labelString := FillInTheBlank request: 'Enter label:' initialAnswer: label contents.
	labelString isEmpty ifFalse: [ label contents: labelString ]