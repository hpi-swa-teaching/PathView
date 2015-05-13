testing
test04IncludesZero
	| property |
	self run: SSBValueRangeTest with: #testNumbers2.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property includesZero.
