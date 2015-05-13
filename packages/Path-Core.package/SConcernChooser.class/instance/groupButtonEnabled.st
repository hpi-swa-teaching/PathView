group button
groupButtonEnabled

	^ (self selectedConcernItem isNil or: 
		[self isConcernGroupSelected]) or: 
			[self isConcernSelected]