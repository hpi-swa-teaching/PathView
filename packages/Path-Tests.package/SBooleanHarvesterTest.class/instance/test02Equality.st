testing
test02Equality
	self run: SSBValueRangeTest with: #testBoolean.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.