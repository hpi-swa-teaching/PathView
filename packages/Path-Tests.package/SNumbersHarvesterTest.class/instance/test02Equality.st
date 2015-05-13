testing
test02Equality
	self runWith: {SSBValueRangeTest->#testNumbers1. 
				SSBValueRangeTest->#testNumbers2.
				SSBValueRangeTest->#testNumbers3.
				SSBValueRangeTest->#testNumbers4}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.