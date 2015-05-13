comparing
hash
	^ (super hash bitXor: self givenType hash) bitXor: self expectedType hash