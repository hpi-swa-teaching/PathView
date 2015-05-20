accessing
color: aColor
	self initialized ifTrue: [
		self stateRectangle color: aColor.
		self textRectangle color: aColor.
	]
	ifFalse: [ super color: aColor. ]