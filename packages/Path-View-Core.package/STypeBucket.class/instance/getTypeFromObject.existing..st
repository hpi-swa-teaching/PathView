collecting types
getTypeFromObject: anObject existing: aType
	SPMPathMap lightContainerTypes
		ifFalse: [^ self getTypeFromObject: anObject].
	aType 
		ifNil: [^ self getTypeFromObject: anObject]
		ifNotNil: [
			(aType class = SContainerType)
				ifTrue: [
					(aType typeOfContainer isNil 
						or: [aType typeOfElements isNil])
							ifTrue: [^ self getTypeFromObject: anObject]
							ifFalse: [^ aType]]
				ifFalse: [^ anObject class]]
	