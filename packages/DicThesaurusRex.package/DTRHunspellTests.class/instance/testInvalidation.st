tests
testInvalidation
	| classWhenAlive |
	classWhenAlive := sut class.
	sut invalidate.
	self 
		deny: (sut isMemberOf: classWhenAlive) description: 'invalidated Hunspell class unchanged';
		assert: (sut spell: 'apple') description: 'Hunspell zombies are not functional';
		assert: (sut isMemberOf: classWhenAlive) description: 'revived Hunspell of wrong class'