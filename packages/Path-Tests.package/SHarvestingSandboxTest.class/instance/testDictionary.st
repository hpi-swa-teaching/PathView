testing-container
testDictionary
	| obj |
	obj := SHClassA new.
	obj b: (Dictionary newFrom: {#a->1. #b->2.}).