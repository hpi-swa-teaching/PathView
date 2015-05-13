comparing
hash
	^ ((super hash 
		bitXor: self maxNumberOfElements hash)
		bitXor: self fixedSize hash)
		bitXor: self emptyAllowed hash