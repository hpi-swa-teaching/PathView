testing
testConstructor
	| obj |
	obj := SHClassA a: 1 b: 2 c: 3.
	self assert: obj a = 1.
	self assert: obj b = 2.
	self assert: obj c = 3.		