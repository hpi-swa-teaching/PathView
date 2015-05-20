accessing
borderColor: aColor
	self initialized ifTrue: [
		self stateRectangle borderColor: aColor.
		self textRectangle borderColor: aColor.
	]
	ifFalse: [ super borderColor: aColor. ]