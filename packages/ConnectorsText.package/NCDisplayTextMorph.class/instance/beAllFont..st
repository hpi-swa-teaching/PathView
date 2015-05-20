accessing
beAllFont: aFont
	self editor selection isEmptyOrNil ifTrue: [ self editor selectAll ].
	textStyle := TextStyle fontArray: (Array with: aFont).
	self releaseCachedState; changed