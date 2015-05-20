accessing
borderWidth: aNumber
	self initialized ifTrue: [
		self stateRectangle borderWidth: aNumber.
		self textRectangle borderWidth: aNumber.
	]
	ifFalse: [ super borderWidth: aNumber. ]