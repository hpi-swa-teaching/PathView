testing
test01cGetParameterRanges
	| ranges | 
	self run: SSBValueRangeTest with: #testBoolean.
	ranges := self bucket argumentsFor: SSBClassD>>#myValue3:.
	self 
		assert: ranges notNil;
		assert: ranges size = 1;
		assert: ranges first isNil.