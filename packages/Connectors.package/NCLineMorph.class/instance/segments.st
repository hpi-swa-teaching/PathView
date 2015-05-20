accessing
segments
	^segments ifNil: 
			[segments := self computeSegments segments do: [:ea | ea roundTo: 0.001]]