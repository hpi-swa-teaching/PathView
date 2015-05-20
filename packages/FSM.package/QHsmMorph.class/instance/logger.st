logging
logger
	^self valueOfProperty: #logger ifAbsentPut: [
		(Smalltalk at: #CircularTranscriptStream ifPresent: [ :cts | cts new: 200 ])
			ifNil: [ Transcript ] ]