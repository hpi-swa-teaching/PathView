testing
test03SpellingOkay
	| property |
	self run: SSBValueRangeTest with: #testString2.
	property := (self bucket membersFor: SSBClassD) first.
	self deny: property spellingOkay.
