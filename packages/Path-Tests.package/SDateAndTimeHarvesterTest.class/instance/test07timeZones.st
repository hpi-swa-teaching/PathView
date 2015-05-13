testing
test07timeZones
	| property |
	self run: SSBValueRangeTest with: #testDateAndTime1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property timeZones = (Set with: DateAndTime now timeZoneName).