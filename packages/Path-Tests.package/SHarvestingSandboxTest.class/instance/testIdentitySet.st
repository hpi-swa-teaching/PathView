testing-container
testIdentitySet
	| obj |
	obj := SHClassA new.
	obj b: IdentitySet new.
	obj b add: $a.
	obj b add: $a.
	obj b: obj b.