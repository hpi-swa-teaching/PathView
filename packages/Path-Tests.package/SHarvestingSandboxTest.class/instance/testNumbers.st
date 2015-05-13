testing
testNumbers
	| jm |
	jm := SHClassA new.
	self
		assert: (jm numbers: 23) = 23;
		assert: (jm numbers: 42.23) = 42.23