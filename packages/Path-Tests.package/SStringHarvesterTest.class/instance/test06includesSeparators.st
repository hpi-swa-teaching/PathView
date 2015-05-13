testing
test06includesSeparators
	| property |
	self run: SSBValueRangeTest with: #testString5.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property includesSeparators.
