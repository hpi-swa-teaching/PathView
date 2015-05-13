testing
test04NanoSecondsRange
	| property |
	self run: SSBValueRangeTest with: #testDuration2.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property nanoRange = (-10 to: 10).
