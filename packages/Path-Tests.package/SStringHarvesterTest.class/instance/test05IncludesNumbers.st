testing
test05IncludesNumbers
	| property |
	self run: SSBValueRangeTest with: #testString3.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property includesNumbers.
