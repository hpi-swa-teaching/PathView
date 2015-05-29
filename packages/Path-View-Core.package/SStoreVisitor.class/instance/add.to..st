storing
add: anObject to: aKey

	(store at: aKey ifAbsentPut: [OrderedCollection new])
		add: anObject