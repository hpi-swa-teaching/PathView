exploring
getTypeInformation: anArrayOfObjects of: aSymbol

	| type |
	((self isSpecificCall and: [self exploreWhat == #types]) and: [anArrayOfObjects isEmpty not])
		ifTrue: [	anArrayOfObjects size = 1
					ifTrue: [type := anArrayOfObjects first class]
					ifFalse: [type := OrderedCollection new.
							anArrayOfObjects do: [:each | type add: each class]].
				self objects add: aSymbol -> type].