collecting types
merge: aContainer and: aType into: aSet
	aContainer
		ifNil: [aSet add: aType]
		ifNotNil: ["merge container types"
			aContainer typeOfElements: 
				aContainer typeOfElements, aType typeOfElements.
			aContainer typeOfKeys: 
				aContainer typeOfKeys, aType typeOfKeys]