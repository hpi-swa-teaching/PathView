testing-container
testAssociationChange
	| obj |
	obj := SHClassA new.
	obj b: (#key -> 'value').
	obj b: (1 -> 2).
	