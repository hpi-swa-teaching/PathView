testing
test03MinDate
	| property high low |
	self run: SSBValueRangeTest with: #testDateAndTime2.
	property := (self bucket membersFor: SSBClassD) first.
	low := ((DateAndTime yesterday - DateAndTime now) * 1.05) asSeconds - 6.
	high := ((DateAndTime yesterday - DateAndTime now) * 1.05) asSeconds - 4.
	self assert: (property minDate asSeconds between: low and: high).