tests
testInvalidationUponStartUp
	| numberOfInstancesBefore classWhenAlive |
	classWhenAlive := sut class.
	DTRHunspell startUp: true.
	numberOfInstancesBefore := DTRHunspell allSubInstances size.
	self 
		deny: (sut isMemberOf: classWhenAlive) description: 'Hunspell not invalidated';
		assert: numberOfInstancesBefore equals: DTRHunspell allSubInstances size;
		assert: numberOfInstancesBefore equals: DTRHunspellZombie allInstances size