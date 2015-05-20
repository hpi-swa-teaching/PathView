accessing
promptForFont
	self editor selection isEmptyOrNil ifTrue: [ self editor selectAll ].
	TextStyle promptForFont: 'Choose font:' andSendTo: self withSelector: #beAllFont: