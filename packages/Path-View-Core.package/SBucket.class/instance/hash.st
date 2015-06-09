comparing
hash
	
	^ ((super hash bitXor: self arguments hash) 
		bitXor: self members hash) 
			bitXor: self returns hash