initialize-release
removeLastObjectsFrom: aDictionary
	aDictionary valuesDo: [:values | 
		values isCollection
			ifTrue: [values do: [:each | self removeLastObject: each]]
			ifFalse: [self removeLastObject: values]].