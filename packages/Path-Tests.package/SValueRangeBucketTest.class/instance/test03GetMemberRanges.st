testing
test03GetMemberRanges
	| ranges |
	self run: SSBValueRangeTest with: #testBoolean.
	ranges := self bucket membersFor: SSBClassD.
	self 
		assert: ranges notNil;
		assert: ranges size = 1;
		assert: ranges first class label = 'Other Objects'.