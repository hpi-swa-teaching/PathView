testing
test06NegativeNumbers
	| property |
	self run: SSBValueRangeTest with: #testNumbers2.
	property := (self bucket membersFor: SSBClassD) first.
	self 
		assert: property positive;
		assert: property negative.
