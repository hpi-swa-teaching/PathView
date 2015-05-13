*Path-Core
setOfAuthors
	self changes ifNil: [^ nil].
	^ (self changes collect: [:each | each first]) asSet asSortedCollection