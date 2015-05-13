testing
test03bNumbersRange
	| property |
	self run: SSBValueRangeTest with: #testNumbers3.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property range = (-1.43 to: 10).
