testing
test03MaximalNumbersOfElements
	| property |
	self run: SSBValueRangeTest with: #testCollection1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property maxNumberOfElements = 4.
