testing
test02Equality
	self runWith: {SSBValueRangeTest->#testCharacters1. 
				SSBValueRangeTest->#testCharacters2.
				SSBValueRangeTest->#testCharacters3.}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.