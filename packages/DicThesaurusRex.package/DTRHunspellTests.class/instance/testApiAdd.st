tests
testApiAdd
	| text |
	text := 'this iz a test text'.
	ignoredWords add: 'iz'.
	sut apiAdd: sut handle word: 'iz'.
	self assert: #(0 0) equals: (sut checkSpellingOf: text startingAt: 1)
	