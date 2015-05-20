label
removeLabel
	| label |
	label := self label.
	label ifNil: [ ^self ].
	label delete.