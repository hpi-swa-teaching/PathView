collecting types
leastCommonSuperTypeOf: type1 and: type2
	"nil is not regarded a proper type"
	type1 ifNil: [ ^ type2 = nil class ifTrue: [ nil ] ifFalse: [ type2 ] ].
	type2 ifNil: [ ^ type1 = nil class ifTrue: [ nil ] ifFalse: [ type1 ] ].
	type1 = nil class ifTrue: [ ^ type2 ].
	type2 = nil class ifTrue: [ ^ type1 ].
	
	"Container types require a special treatment"
	(type1 isBehavior not or: [type2 isBehavior not])
		ifTrue: [^ self leastCommonSuperContainerTypeOf: type1 and: type2].	
	
	"Simple cases with direct relations."
	type1 = type2 ifTrue: [ ^ type1 ].
	(type1 inheritsFrom: type2) ifTrue: [ ^ type2 ].
	(type2 inheritsFrom: type1) ifTrue: [ ^ type1 ].
	
	"All the simple cases have been dealt with; now type1 and type2 are on different
	branches of the inheritance tree."
	^ (type1 allSuperclasses intersection: type2 allSuperclasses) first