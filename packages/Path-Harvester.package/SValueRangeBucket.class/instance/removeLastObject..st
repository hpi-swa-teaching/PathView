initialize-release
removeLastObject: aProperty
	aProperty ifNotNil: [
		aProperty isCollection
			ifTrue: [aProperty do: [:property | property lastObject: nil]]
			ifFalse: [aProperty lastObject: nil]].