event handling
mouseDown: evt 
	| pt possible |
	glyph ifNil: [^self].
	self clickPoints isEmpty ifFalse: [
		endPoint := evt shiftPressed ifTrue: [ clickPoints last ] ifFalse: [ joinPoint ]].
	pt := transform globalPointToLocal: evt position.
	self clickPoints addLast: pt.
	possible := glyph contours collect: 
					[:c | 
					| i |
					i := (1 to: c size by: 3) detectMin: [:p | (c at: p) dist: pt].
					c at: i].
	joinPoint := possible detectMin: [:p | p dist: pt].
	self invalidRect: self editBox