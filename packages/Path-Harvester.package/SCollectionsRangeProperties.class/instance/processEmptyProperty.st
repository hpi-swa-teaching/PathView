processing
processEmptyProperty
	self lastObject ifEmpty: [self emptyAllowed: true]