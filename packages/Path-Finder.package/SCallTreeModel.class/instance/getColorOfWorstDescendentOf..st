spec commands
getColorOfWorstDescendentOf: aCallNode 
	| minHue color |
	self areColorsAvailable
		ifFalse: [^ nil].
	color := Color white.
	minHue := 360.
	self
		traverseCallTree: aCallNode
		with: [:ea | (self getColorFromMap: ea)
						ifNotNilDo: [:c | c ~= Color white
								ifTrue: [c hue < minHue
										ifTrue: [color := c.
											minHue := c hue]]]].
	^ color