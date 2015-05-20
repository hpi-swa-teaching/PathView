event handling
handlesKeyboard: evt
	label ifNil: [ ^false ].
	^label handlesKeyboard: evt.