testing
test09Uppercase
	| property |
	self run: SSBValueRangeTest with: #testCharacters1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property uppercase.