testing
test02Equality
	self runWith: {SSBValueRangeTest->#testString1.
				SSBValueRangeTest->#testString2.
				SSBValueRangeTest->#testString3.
				SSBValueRangeTest->#testString4.
				SSBValueRangeTest->#testString5}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.