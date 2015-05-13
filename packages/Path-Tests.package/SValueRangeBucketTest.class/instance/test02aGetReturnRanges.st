testing
test02aGetReturnRanges
	| range | 
	self run: SSBValueRangeTest with: #testBoolean.
	range := self bucket returnFor: SSBClassD>>#myValue:.
	self 
		assert: range notNil;
		assert: range class label = 'Other Objects'.