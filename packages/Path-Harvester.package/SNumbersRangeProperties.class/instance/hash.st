comparing
hash
	^ (((super hash 
		bitXor: self range hash)
		bitXor: self includesZero hash)
		bitXor: self positive hash)
		bitXor: self negative hash