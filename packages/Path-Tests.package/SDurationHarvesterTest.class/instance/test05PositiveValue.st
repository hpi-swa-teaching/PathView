testing
test05PositiveValue
	| property |
	self run: SSBValueRangeTest with: #testDuration1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property positive.
