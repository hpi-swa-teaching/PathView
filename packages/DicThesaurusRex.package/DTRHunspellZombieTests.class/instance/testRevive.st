testing
testRevive
	sut revive.
	self assert: (sut isMemberOf: DTRHunspell platformSpecificSubclass);
		assert: sut handle notNil