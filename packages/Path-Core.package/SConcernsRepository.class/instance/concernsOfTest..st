public api
concernsOfTest: aMethodRef
	| concerns |
	concerns := IdentitySet new.
	self mapping keysAndValuesDo: [:key :value | 
		(value includes: aMethodRef) ifTrue: [concerns add: key]].
	^ concerns