collecting types
leastCommonSuperContainerTypeOf: type1 and: type2
	(type1 isBehavior not and: [type2 isBehavior])
		ifTrue: [^ (type1 typeOfContainer withAllSuperclasses 
					intersection: type2 withAllSuperclasses) first].
	(type1 isBehavior and: [type2 isBehavior not])
		ifTrue: [^ (type1 withAllSuperclasses 
					intersection: type2 typeOfContainer withAllSuperclasses) first].

	"Both containers must be merged"
	type1 = type2 ifTrue: [^ type1].
	type1 typeOfContainer: (self leastCommonSuperTypeOf: type1 typeOfContainer 
										and: type2 typeOfContainer).
	type1 typeOfElements: (self leastCommonSuperTypeOf: type1 typeOfElements 										and: type2 typeOfElements).
	type1 typeOfKeys: (self leastCommonSuperTypeOf: type1 typeOfKeys 										and: type2 typeOfKeys).
	^ type1