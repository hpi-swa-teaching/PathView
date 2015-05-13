tests
testInstanceCreation
	| instance |
	instance := DTRHunspell instance.
	self
		deny: (instance isMemberOf: DTRHunspell) description: 'spelling interface instance is member of abstract class';
		shouldnt: [instance getGuesses: 'test'] raise: Error description: 'implementation of #getGuesses: failed';
		shouldnt: [instance checkSpellingOf: 'test' startingAt: 1] raise: Error description: 'implementation of #checkSpellingOf:startingAt: failed';
		shouldnt: [instance setIgnoredWord: 'someobscurewordasfsf'] raise: Error description: 'implementation of #setIgnoredWord: failed';
		shouldnt: [instance removeIgnoredWord: 'someobscurewordasfsf'] raise: Error description: 'implementation of #removeIgnoredWord: failed'