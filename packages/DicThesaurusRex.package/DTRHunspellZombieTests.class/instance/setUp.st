running
setUp
	[sut := DTRHunspellZombie new] on: Warning do: [:w | w resume: nil].
	sut invalidate.
	self assert: (sut isMemberOf: DTRHunspellZombie) description: 'could not create zombie right away for testing'