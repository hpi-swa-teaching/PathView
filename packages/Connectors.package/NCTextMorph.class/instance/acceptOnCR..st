accessing
acceptOnCR: aBoolean
	acceptOnCR := aBoolean.
	self crAction: (aBoolean
		ifTrue: [ MessageSend receiver: self selector: #acceptContents ]
		ifFalse: [ ]).
