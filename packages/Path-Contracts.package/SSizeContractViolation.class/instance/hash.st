comparing
hash
	^ (super hash bitXor: self givenSize hash) bitXor: self expectedSize hash