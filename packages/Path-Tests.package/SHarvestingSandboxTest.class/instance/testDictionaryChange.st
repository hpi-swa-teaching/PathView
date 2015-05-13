testing-container
testDictionaryChange
	| obj |
	obj := SHClassA new.
	obj b: Dictionary new.
	obj b add: #a -> 1.
"	obj b: obj b."
	obj b at: #a put: 2.0.
"	obj b: obj b."