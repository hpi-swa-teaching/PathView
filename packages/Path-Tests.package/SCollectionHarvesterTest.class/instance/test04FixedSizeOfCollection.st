testing
test04FixedSizeOfCollection
	| property |
	self run: SSBValueRangeTest with: #testCollection1.
	property := (self bucket membersFor: SSBClassD) first.
	self deny: property fixedSize.
