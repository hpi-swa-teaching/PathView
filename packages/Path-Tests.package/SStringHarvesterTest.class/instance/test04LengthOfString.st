testing
test04LengthOfString
	| property |
	self run: SSBValueRangeTest with: #testString1.
	property := (self bucket membersFor: SSBClassD) first.
	self deny: property length = 0.
