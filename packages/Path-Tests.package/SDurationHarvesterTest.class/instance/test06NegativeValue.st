testing
test06NegativeValue
	| property |
	self run: SSBValueRangeTest with: #testDuration1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property negative.
