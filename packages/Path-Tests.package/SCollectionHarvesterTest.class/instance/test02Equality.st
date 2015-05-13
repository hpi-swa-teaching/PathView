testing
test02Equality
	self runWith: {SSBValueRangeTest->#testCollection1. 
				SSBValueRangeTest->#testCollection2}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.