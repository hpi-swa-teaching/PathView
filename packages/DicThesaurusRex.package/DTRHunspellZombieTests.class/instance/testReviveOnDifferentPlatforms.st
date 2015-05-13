testing
testReviveOnDifferentPlatforms
	| correctClass instance |
	correctClass := DTRHunspell platformSpecificSubclass.
	DTRHunspell subclasses, {DTRHunspell} do: [:class |
		instance := class basicNew invalidate; yourself.
		self assert: (instance isMemberOf: DTRHunspellZombie) description: 'invalidation failed for ', class name.
		self shouldnt: [instance revive] raise: Error description: 'error when reviving ', class name.
		self assert: (instance isMemberOf: correctClass) description: 'wrong class after invalidation and revival of ', class name]