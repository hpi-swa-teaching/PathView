testing
test06IsLeapYear
	| property |
	self run: SSBValueRangeTest with: #testDateAndTime1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property isLeapYear = DateAndTime now isLeapYear.
