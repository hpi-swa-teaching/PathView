testing
test05PositiveNumbers
	| property |
	self run: SSBValueRangeTest with: #testNumbers1.
	property := (self bucket membersFor: SSBClassD) first.
	self 
		assert: property positive;
		deny: property negative.
