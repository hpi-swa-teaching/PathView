visualization
addStatementCoverageInfoAt: aPosition to: aStream
	aPosition y <= 0.25
		ifTrue: [aStream nextPutAll: '0']
		ifFalse: [aStream nextPutAll: ((aPosition y - 0.25) / 0.75 * 100) floor asString].
	aStream nextPutAll: '% covered statements.'.