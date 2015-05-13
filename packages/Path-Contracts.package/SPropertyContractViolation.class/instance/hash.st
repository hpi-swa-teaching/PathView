comparing
hash
	^ ((super hash bitXor: self givenProperty hash) bitXor: self expectedProperty hash) 		bitXor: self expected hash