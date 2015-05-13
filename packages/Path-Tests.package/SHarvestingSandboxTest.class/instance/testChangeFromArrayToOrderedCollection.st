testing-container
testChangeFromArrayToOrderedCollection
	| obj |
	obj := SHClassA new.
	obj b: {1. 2}.
	obj b: obj b asOrderedCollection.