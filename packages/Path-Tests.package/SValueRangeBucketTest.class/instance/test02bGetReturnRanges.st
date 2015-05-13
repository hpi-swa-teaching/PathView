testing
test02bGetReturnRanges
	| range | 
	self run: SSBValueRangeTest with: #testBoolean.
	range := self bucket returnFor: SSBClassD>>#myValue2:.
	self 
		assert: range notNil;
		assert: range class label = 'Other Objects'.