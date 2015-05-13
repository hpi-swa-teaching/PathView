pathMap-hooks
getLabelString: aPosition
	| numberOfColors distance |
	numberOfColors := self colorMapping size + 1.
	distance := 1 / numberOfColors.
	aPosition y <= distance
		ifTrue: [^ 'No value ranges available'].
	^ (self colorMapping at: (aPosition y / distance) asInteger) key label
