testing
test03SecondsRange
	| property |
	self run: SSBValueRangeTest with: #testDuration1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property secondsRange = (-10 to: 10).
