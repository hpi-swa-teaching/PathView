multi-window support
stateKey

	^ currentState ifNil: [
		currentState := (savedName ifNil: ['*unsaved*']), '#', DateAndTime now]