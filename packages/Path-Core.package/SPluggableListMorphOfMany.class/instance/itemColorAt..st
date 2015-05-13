drawing
itemColorAt: index
	itemColorSelector ifNil: [^ false].
	^ model perform: itemColorSelector with: index