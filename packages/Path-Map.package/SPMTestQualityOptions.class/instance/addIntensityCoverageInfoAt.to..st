visualization
addIntensityCoverageInfoAt: aPosition to: aStream
	aPosition y <= 0.25
		ifTrue: [aStream nextPutAll: 'Method not covered.']
		ifFalse: [aStream nextPutAll: ('Method covered by ', 
					((aPosition y - 0.25) / 0.75 * 
					self pathMap numberOfTests ln) exp floor asString, ' tests.')]