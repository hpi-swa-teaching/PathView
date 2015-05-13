comparing
hash
	^ ((super hash bitXor: self givenObject hash) bitXor: self expectedCollection hash) 		bitXor: self property hash