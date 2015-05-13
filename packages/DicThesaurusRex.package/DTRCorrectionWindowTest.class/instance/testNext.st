tests
testNext
	"Tests DTRMenu>>#addToDictionary"
	| oldErrorIndex |
	sut methodIndex: 1.
	oldErrorIndex := sut errorIndex.
	sut next.
	self assert: ((sut errorIndex = (oldErrorIndex + 1)) or: (sut methodIndex = 2))
	
