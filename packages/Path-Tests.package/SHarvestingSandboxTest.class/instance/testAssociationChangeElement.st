testing-container
testAssociationChangeElement
	| obj |
	obj := SHClassA new.
	obj b: (#key -> 'value').
	obj b: (#otherKey -> 2).