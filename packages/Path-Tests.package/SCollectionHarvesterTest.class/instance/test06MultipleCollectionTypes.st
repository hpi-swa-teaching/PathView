testing
test06MultipleCollectionTypes
	| property |
	self run: SSBValueRangeTest with: #testCollection2.
	property := (self bucket membersFor: SSBClassD) first.
	self 
		deny: property constantValue;
		deny: property nilAllowed;
		assert: property maxNumberOfElements = 3;
		assert: property fixedSize;
		deny: property emptyAllowed.
