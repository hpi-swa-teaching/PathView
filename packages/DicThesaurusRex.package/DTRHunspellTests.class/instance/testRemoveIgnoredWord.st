tests-ignored-words
testRemoveIgnoredWord
	| newInstance otherInstance |
	ignoredWords add: 'tezt'.
	otherInstance := sut class instance.
	sut setIgnoredWord: 'tezt'.
	newInstance := sut class instance.
	sut removeIgnoredWord: 'tezt'.
	self
		deny: (sut spell: 'tezt') description: 'word still ignored';
		deny: (otherInstance spell: 'tezt') description: 'word still ignored by other instance';
		deny: (newInstance spell: 'tezt') description: 'word still ignored by instance created after ignoring the word';
		deny: (sut class instance spell: 'tezt') description: 'word still ignored by a fresh instance'
	