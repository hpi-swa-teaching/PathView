toolbar-actions
extendArea
	
	| value |
	value := UIManager default request: 'Please insert the number of pixels to extend the diagram area.' initialAnswer: '30'.
	value ifNotNil: [
		value := value asInteger.
		value ifNotNil: [
			value > 0
				ifTrue: [ self extent: (self extent + value) ]
				ifFalse: [ UIManager default inform: 'Input was not a valid integer > 0.' ] ] ].