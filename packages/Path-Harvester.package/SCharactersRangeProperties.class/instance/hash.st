comparing
hash
	^ (((((((super hash 
		bitXor: self range hash)
		bitXor: self includesLetters hash)
		bitXor: self includesDigits hash)
		bitXor: self includesSeparators hash)
		bitXor: self includesSpecials hash)
		bitXor: self lowercase hash)
		bitXor: self uppercase hash)
		bitXor: self httpSafe hash	       