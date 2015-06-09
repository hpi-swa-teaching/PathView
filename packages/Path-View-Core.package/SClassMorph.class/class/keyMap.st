constants
keyMap
	"keyMap := nil"
	
	^ keyMap ifNil: [ | shiftDistance |
		shiftDistance := [ :event | event shiftPressed ifTrue: [10] ifFalse: [1] ].
		keyMap := Dictionary newFrom: {
			Character delete -> [:this | this dismissViaHalo].
			Character arrowUp -> [:this :event | this top: this top - (shiftDistance value: event)].
			Character arrowDown -> [:this :event | this top: this top + (shiftDistance value: event)].
			Character arrowLeft -> [:this :event | this left: this left - (shiftDistance value: event)].
			Character arrowRight -> [:this :event | this left: this left + (shiftDistance value: event)]
		} ]