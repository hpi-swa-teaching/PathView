testing
testFreeHandle
	"should be a no-op"
	sut freeHandle.
	self assert: (sut handle isNil);
		assert: (sut isMemberOf: DTRHunspellZombie) description: 'changed type when it should not'