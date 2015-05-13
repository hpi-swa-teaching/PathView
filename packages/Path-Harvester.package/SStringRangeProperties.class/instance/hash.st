comparing
hash
	^ (((((super hash 
		bitXor: self spellingOkay hash)
		bitXor: self length hash)
		bitXor: self includesNumbers hash)
		bitXor: self includesSeparators hash)
		bitXor: self isAsciiString hash)
		bitXor: self contentTypes hash  