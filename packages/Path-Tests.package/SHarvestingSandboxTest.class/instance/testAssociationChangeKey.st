testing-container
testAssociationChangeKey
	| obj |
	obj := SHClassA new.
	obj b: (#key -> 'value').
	obj b: (1 -> '2').