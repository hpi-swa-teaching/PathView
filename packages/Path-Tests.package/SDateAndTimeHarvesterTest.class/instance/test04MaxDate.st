testing
test04MaxDate
	| property high low |
	self run: SSBValueRangeTest with: #testDateAndTime2.
	property := (self bucket membersFor: SSBClassD) first.
	low := ((DateAndTime tomorrow - DateAndTime now * 1.05) asSeconds + 4).
	high := ((DateAndTime tomorrow - DateAndTime now * 1.05) asSeconds + 6).
	self assert: (property maxDate asSeconds between: low and: high)
