tests
testSeparationAtNumbers
	sut readChar: $t; readChar: $e; readChar: $s; readChar: $t; readChar: $1; readChar: $n;
	readChar: $o; readChar: $w; readChar: $ .
	self assert: #('test' 'now') asOrderedCollection equals: sut words