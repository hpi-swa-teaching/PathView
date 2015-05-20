accessing
borderWidth: anInteger 
	| ratio newWidth oldWidth |
	oldWidth := self fullLineWidth.
	anInteger > 0 ifTrue: [borderColor ifNil: [borderColor := Color black]].
	newWidth := ((anInteger max: 0) min: self lineWidth / 2) asInteger.
	borderWidth := newWidth.
	ratio := self fullLineWidth / oldWidth.
	self arrows do: [:a | a scale: (a scale * ratio) asPoint].
	self computeBounds