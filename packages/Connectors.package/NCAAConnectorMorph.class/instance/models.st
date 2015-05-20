graph edge view
models
	^Array streamContents: [ :s |
		self modelOrNil ifNotNilDo: [ :m | s nextPut: m ].
		self graphModel ifNotNilDo: [ :m | s nextPut: m ]]
