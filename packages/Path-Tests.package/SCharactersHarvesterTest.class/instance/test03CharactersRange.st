testing
test03CharactersRange
	| property |
	self run: SSBValueRangeTest with: #testCharacters1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property range = (Interval from: 32 to: 97).
