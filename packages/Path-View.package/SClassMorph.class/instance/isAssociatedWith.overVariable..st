associations
isAssociatedWith: classMorph overVariable: varName
	
	| type |
	type := self class memberTypeFor: varName in: klass.
	^ type notNil
		and: 
			[ ((type = classMorph klass)
			or: [ type isBehavior not and: [ type innerTypeOfElements = classMorph klass ] ]) ]