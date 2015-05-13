drawing
getBackgroundColor
	self indentLevel even
		ifTrue: [^ self class backgroundColorEven]
		ifFalse: [^ self class backgroundColorOdd].