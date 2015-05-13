icons
getMostSuspicousDescendentFor: aCallNode 
	| node maxSuspiciousness |
	self areColorsAvailable
		ifFalse: [^ nil].
	node := aCallNode.
	maxSuspiciousness := 0.
	self
		traverseCallTree: aCallNode
		with: [:ea | (self getSuspiciousnessAndConfidenceFor: ea)
						ifNotNilDo: [:susp | susp value first > maxSuspiciousness
										ifTrue: [node := ea.
											maxSuspiciousness := susp value first.]]].
	^ node.