testing
testInvalidate
	"should be a no-op"
	sut invalidate.
	self assert: (sut isMemberOf: DTRHunspellZombie)