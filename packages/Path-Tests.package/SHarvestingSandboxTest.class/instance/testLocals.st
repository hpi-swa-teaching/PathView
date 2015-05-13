testing
testLocals
	| jm |
	jm := SHClassA new.
	self
		assert: (jm locals: 23 which: 1) = 23;
		assert: (jm locals: 42.0 which: 1) = 42.0;
		assert: (jm locals: 'yo' which: 2) = 'yo';
		assert: (jm locals: #yo which: 2) = #yo;
		assert: (jm locals: nil which: 3) = nil;
		assert: (jm locals: Smalltalk which: 3) = Smalltalk