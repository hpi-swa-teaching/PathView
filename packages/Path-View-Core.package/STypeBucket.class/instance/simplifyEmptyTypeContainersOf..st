initialize-release
simplifyEmptyTypeContainersOf: aDictionary
	| types | 
	aDictionary keys do: [:each | 
		types := aDictionary at: each.
		types isCollection
			ifTrue: [	aDictionary at: each put: (types collect: [:type | 
					(self harvestedTypeIsEmptyContainer: type)
						ifTrue: [type typeOfContainer]
						ifFalse: [type]])]
			ifFalse: [(self harvestedTypeIsEmptyContainer: types)
						ifTrue: [aDictionary at: each put: types typeOfContainer]]].