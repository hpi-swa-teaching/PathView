contracts
printContractFor: anArgumentName with: aBuilder
	self 
		printChildrenContract: self typeOfContainer 
			with: [:type | type printContractFor: anArgumentName with: aBuilder];
		printChildrenContract: self typeOfKeys 
			with: [:type | self 
							print: self dictionaryTemplate 
							contractsFor: anArgumentName 
							typed: type 
							with: aBuilder];
		printChildrenContract: self typeOfElements 
			with: [:type | self 
							print: self collectionTemplate 
							contractsFor: anArgumentName 
							typed: type 
							with: aBuilder].