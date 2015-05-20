menus
promptForFont
	| label |
	label := self label.
	label ifNil: [ ^self ].
	TextStyle promptForFont: 'Choose label font:' andSendTo: label withSelector: #beAllFont: