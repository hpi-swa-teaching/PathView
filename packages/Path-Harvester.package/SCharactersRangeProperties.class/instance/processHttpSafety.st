processing
processHttpSafety
	self lastObject isSafeForHTTP
		ifFalse: [self httpSafe: false].