accessing
lineWidth: aNumber 
	| ratio oldWidth |
	oldWidth := self fullLineWidth.
	self lineWidth1: aNumber.
	ratio := self fullLineWidth / oldWidth.
	self arrows do: [:a | a scale: (a scale * ratio) asPoint].
	self computeBounds