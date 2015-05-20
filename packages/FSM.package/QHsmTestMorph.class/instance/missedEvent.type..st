event handling
missedEvent: evt type: type
	(#(mouseOver mouseMove) includes: type) ifFalse: [
	self logger 
		nextPutAll: self currentState;
		nextPutAll: ' missed '; print: type; space; print: evt; cr; endEntry ].
	^super missedEvent: evt type: type