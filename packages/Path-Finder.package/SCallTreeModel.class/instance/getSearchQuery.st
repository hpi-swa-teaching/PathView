searching
getSearchQuery

	self searchQuery ifNil: [^ ''].
	^ self searchQuery