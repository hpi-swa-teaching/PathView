testing
test03IsClosed
	| property |
	self run: SSBValueRangeTest with: #testStreams1.
	property := (self bucket membersFor: SSBClassD) first.
	self deny: property isClosed.
