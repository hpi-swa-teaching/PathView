testing-container
testChangeFromSingleObjectToCollection
	| obj |
	obj := SHClassA new.
	obj b: 1.
	obj b: (OrderedCollection with: obj b with: 2).