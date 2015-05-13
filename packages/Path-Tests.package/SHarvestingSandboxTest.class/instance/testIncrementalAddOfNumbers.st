testing-container
testIncrementalAddOfNumbers
	| obj |
	obj := SHClassA new.
	obj b: OrderedCollection new.
	obj b 
			add: 1;
			add: -2;
			addLast: 2.0;
			add: (3/5).
"	obj b: obj b."