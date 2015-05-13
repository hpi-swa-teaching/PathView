tests-ignored-words
testIgnoreWords
	| text |
	text := 'thiz is a test texxt'.
	ignoredWords add: 'thiz'; add: 'texxt'.
	sut setIgnoredWords: (OrderedCollection with: 'thiz' with: 'texxt').
	self assert: #(0 0) equals: (sut checkSpellingOf: text startingAt: 1)
	