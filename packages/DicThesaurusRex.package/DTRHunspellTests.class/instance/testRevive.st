tests
testRevive
	"should be a no-op"
	| class |
	class := sut class.
	sut revive.
	self
		assert: (sut isMemberOf: class);
		assert: sut handle notNil