visualization
addMethodCoverageInfoAt: aPosition to: aStream
	aPosition y >= 0.5
		ifTrue: [aStream nextPutAll: 'Method covered.']
		ifFalse: [aStream nextPutAll: 'Method not covered.']