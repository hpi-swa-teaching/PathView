tests
testReadChar
	"Tests DTRCamelCaseParser>>#readChar:"
	sut readChar: $t; readChar: $e; readChar: $x; readChar: $t; readChar: $ .
	self assert: 'text' equals: sut words last.
	sut readChar: $h; readChar: $e; readChar: $l; readChar: $l; readChar: $o; readChar: $:.
	self assert: 'hello' equals: sut words last.
	sut readChar: $h; readChar: $e; readChar: $l; readChar: $l; readChar: $o; readChar: $,.
	self assert: 'hello' equals: sut words last