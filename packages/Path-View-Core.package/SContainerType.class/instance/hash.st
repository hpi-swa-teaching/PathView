comparing
hash
	^ (self typeOfContainer hash 
		bitXor: self typeOfElements hash) 
		bitXor: self typeOfKeys hash