controls-inavariants
hasInvariants
	^ (self selectedClassOrMetaClass notNil and: 
		   [self selectedClassOrMetaClass organization invariantMethod notNil])