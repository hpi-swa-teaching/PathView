appearance
dashedLine: aBoolean
	line dashedBorder: (aBoolean
		ifTrue: [ { line lineWidth * 4 . line lineWidth * 3 . Color transparent } ]
		ifFalse: [ nil ])