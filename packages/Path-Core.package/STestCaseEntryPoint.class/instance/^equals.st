comparing
= other
	self class == other class
		ifFalse: [^ false].
	^ self asMethodReference = other asMethodReference