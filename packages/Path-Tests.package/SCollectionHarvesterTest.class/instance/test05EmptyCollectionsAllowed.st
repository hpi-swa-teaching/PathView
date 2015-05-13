testing
test05EmptyCollectionsAllowed
	| property |
	self run: SSBValueRangeTest with: #testCollection1.
	property := (self bucket membersFor: SSBClassD) first.
	self assert: property emptyAllowed.
