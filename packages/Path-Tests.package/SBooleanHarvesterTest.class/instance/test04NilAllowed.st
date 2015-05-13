testing
test04NilAllowed
	self run: SSBValueRangeTest with: #testBoolean.
	self 
		deny: (self bucket returnFor: SSBClassD>>#myValue:) nilAllowed;
		assert: (self bucket membersFor: SSBClassD) first nilAllowed.