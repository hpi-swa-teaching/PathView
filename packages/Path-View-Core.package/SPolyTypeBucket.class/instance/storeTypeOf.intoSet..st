collecting types
storeTypeOf: anObject intoSet: aSet
	| type container |
	anObject class = UndefinedObject
		ifFalse: [type := (self getTypeFromObject: anObject).
				type isBehavior ifTrue: [^ aSet add: type].
				container := self find: type in: aSet.	
				self merge: container and: type into: aSet]