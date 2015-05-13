testing
test04bMultipleValueRanges
	| ranges |
	self runWith: {SSBValueRangeTest->#testCharacters1. 
					SSBValueRangeTest->#testNumbers1}.
	ranges := self bucket returnFor: SSBClassD>>#myValue:.
	self 
		assert: ranges isCollection;
		assert: ranges size = 2;
		assert: ranges first class label = 'Characters';
		assert: ranges second class label = 'Numbers'.