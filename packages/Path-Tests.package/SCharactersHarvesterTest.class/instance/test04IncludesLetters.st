testing
test04IncludesLetters
	| property |
	self run: SSBValueRangeTest with: #testCharacters1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property includesLetters.