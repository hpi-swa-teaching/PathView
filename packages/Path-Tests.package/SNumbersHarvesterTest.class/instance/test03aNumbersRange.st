testing
test03aNumbersRange
	| property |
	self run: SSBValueRangeTest with: #testNumbers2.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property range = (-7 to: 10).
