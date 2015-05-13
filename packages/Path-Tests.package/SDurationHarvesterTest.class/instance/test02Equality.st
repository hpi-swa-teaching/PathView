testing
test02Equality
	self runWith: {SSBValueRangeTest->#testDuration1. 
				SSBValueRangeTest->#testDuration2.
				SSBValueRangeTest->#testDuration3}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.