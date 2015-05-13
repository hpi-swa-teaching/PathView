testing
test01bGetParameterRanges
	| ranges | 
	self run: SSBValueRangeTest with: #testBoolean.
	ranges := self bucket argumentsFor: SSBClassD>>#myValue2:.
	self 
		assert: ranges notNil;
		assert: ranges size = 1;
		assert: ranges first class label = 'Other Objects'.