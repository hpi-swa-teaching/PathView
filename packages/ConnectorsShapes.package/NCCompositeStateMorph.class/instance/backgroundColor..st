accessing
backgroundColor: aColor
	self initialized ifTrue: [
		self stateRectangle backgroundColor: aColor.
		self textRectangle backgroundColor: aColor.
	]
	ifFalse: [ super backgroundColor: aColor. ]