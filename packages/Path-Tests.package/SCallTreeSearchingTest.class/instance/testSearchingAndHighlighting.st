testing
testSearchingAndHighlighting

	self callTree searchNode: 'SSBClassB>>myValue'.
	self assert: self callTree highlightedItems size = 4.
	self assert: self callTree highlightedItems first id = 11.
	self assert: self callTree highlightedItems second id = 13.
	self assert: self callTree highlightedItems third id = 15.
	self assert: self callTree highlightedItems fourth id = 16.