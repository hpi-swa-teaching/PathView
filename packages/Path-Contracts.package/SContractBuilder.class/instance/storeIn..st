building
storeIn: aClass

	| methodNode |
	methodNode := (aClass 
		compile:  self sources contents 
		classified: nil 
		notifying: nil 
		trailer: aClass defaultMethodTrailer 
		ifFail: [^ nil]).
	methodNode method 
		putSource: self sources contents 
		fromParseNode: methodNode node inFile: 2
		withPreamble: [:f | f cr; nextPut: $!; nextChunkPut: 'Contract Method'; cr].
	self compiledMethod: methodNode method