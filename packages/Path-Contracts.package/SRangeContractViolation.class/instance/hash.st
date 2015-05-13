comparing
hash
	^ (((super hash bitXor: self givenObject hash) bitXor: self expectedMin hash) bitXor: 		self expectedMax hash) bitXor: self property hash