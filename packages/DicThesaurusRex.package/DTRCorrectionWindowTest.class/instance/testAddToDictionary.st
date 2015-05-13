tests
testAddToDictionary
	"Tests DTRMenu>>#addToDictionary"
	| ignoredWord keys |
	keys := sut errors keys sorted: [ :a :b | a < b].
	ignoredWord := sut errors at: (keys at: sut errorIndex).
	ignoredWords add: ignoredWord.
	sut methodIndex: 1.
	sut addToDictionary.
	self assert: (sut spellChecker getIgnoredWords includes: ignoredWord)
	
