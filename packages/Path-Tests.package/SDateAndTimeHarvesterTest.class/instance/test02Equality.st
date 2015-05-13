testing
test02Equality
	self runWith: {SSBValueRangeTest->#testDateAndTime1. 
				SSBValueRangeTest->#testDateAndTime2}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.