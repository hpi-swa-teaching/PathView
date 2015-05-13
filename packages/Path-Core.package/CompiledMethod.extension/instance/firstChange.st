*Path-Core
firstChange
	self changes ifNil: [^ nil].
	^ self changes last