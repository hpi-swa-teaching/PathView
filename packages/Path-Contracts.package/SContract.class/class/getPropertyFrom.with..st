value range contracts
getPropertyFrom: anObject with: aSymbol
	^ aSymbol substrings 
		inject: anObject 
		into: [:result :each | result perform: each asSymbol]