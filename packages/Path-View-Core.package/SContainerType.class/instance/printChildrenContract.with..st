contracts
printChildrenContract: aCollectionType with: aBlock
	| type |
	aCollectionType ifNotNil: [
		(aCollectionType isKindOf: SContainerType)
			ifTrue: [type := aCollectionType typeOfContainer]
			ifFalse: [type := aCollectionType].
		aBlock value: type].	