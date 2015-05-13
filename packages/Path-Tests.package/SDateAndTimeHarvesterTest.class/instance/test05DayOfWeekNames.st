testing
test05DayOfWeekNames
	| property |
	self run: SSBValueRangeTest with: #testDateAndTime2.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property dayOfWeekNames = (Set 
										with: DateAndTime now dayOfWeekName 
										with: DateAndTime yesterday dayOfWeekName 
										with: DateAndTime tomorrow dayOfWeekName).
