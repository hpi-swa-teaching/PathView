testing
test02Equality
	self runWith: {SSBValueRangeTest->#testStreams1.
				SSBValueRangeTest->#testStreams2}.
	self assert: (self bucket returnFor: SSBClassD>>#myValue:) = 
				(self bucket argumentsFor: SSBClassD>>#myValue:) first.