visual properties
fillStyle: aColor
	self initialized ifTrue: [
		self stateRectangle fillStyle: aColor.
		self textRectangle fillStyle: aColor.
	]
	ifFalse: [ super fillStyle: aColor. ]