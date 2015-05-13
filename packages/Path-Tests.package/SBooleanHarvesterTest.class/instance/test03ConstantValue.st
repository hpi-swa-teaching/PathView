testing
test03ConstantValue
	self run: SSBValueRangeTest with: #testBoolean.
	self 
		assert: (self bucket returnFor: SSBClassD>>#myValue:) constantValue;
		deny: (self bucket membersFor: SSBClassD) first constantValue.
