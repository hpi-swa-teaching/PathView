event handling
hoverIn
	
	super hoverIn.
	sourceCodePopup ifNil: [
		sourceCodePopup := SSourceCodePopup
			on: self
			withMethod: methodName
			in: self visualizedClass ].
	sourceCodePopup appear.