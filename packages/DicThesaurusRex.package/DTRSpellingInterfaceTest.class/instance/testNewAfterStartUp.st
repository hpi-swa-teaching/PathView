tests
testNewAfterStartUp
	| instance |
	DTRHunspell startUp: true.
	self shouldnt: [instance := DTRHunspell instance] raise: Error.
	self deny: instance isNil;
		deny: instance isBehavior