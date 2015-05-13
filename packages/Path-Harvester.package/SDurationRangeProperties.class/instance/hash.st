comparing
hash
	^ ((((super hash 
		bitXor: self secondsRange hash)
		bitXor: self nanoRange hash)
		bitXor: self positive hash)
		bitXor: self negative hash)
		bitXor: self isZero hash    