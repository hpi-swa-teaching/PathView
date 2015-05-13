testing
test07isAsciiString
	| property |
	self run: SSBValueRangeTest with: #testString5.
	property := (self bucket membersFor: SSBClassD) first.
	self deny: property isAsciiString.
