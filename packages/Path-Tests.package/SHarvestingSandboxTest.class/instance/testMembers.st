testing
testMembers
	| sm |
	sm := SHClassA new.
	self
		assert: (sm a: 23; a) = 23;
		assert: (sm a: 42.0; a) = 42.0;
		assert: (sm b: 'yo'; b) = 'yo';
		assert: (sm b: #yo; b) = #yo;
		assert: (sm c: nil; c) = nil;
		assert: (sm c: Smalltalk; c) = Smalltalk