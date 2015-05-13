comparing
hash
	^ (super hash 
		bitXor: self isClosed hash)
		bitXor: self contents hash