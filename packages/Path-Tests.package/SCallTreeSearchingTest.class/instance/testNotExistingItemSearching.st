testing
testNotExistingItemSearching

	| result |
	result := self callTree searchNode: 'XXX'.
	self assert: result isEmpty.