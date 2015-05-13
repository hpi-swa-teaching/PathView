testing
test04aMultipleValueRanges
	| ranges |
	self runWith: {SSBValueRangeTest->#testCharacters1. 
					SSBValueRangeTest->#testNumbers1}.
	ranges := self bucket argumentsFor: SSBClassD>>#myValue:.
	self 
		assert: ranges first isCollection;
		assert: ranges first size = 2;
		assert: ranges first first class label = 'Characters';
		assert: ranges first second class label = 'Numbers'.