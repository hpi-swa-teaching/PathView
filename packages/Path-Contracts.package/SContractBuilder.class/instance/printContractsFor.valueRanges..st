templates
printContractsFor: anArgumentName valueRanges: aCollectionOfRanges

	aCollectionOfRanges do: [:each | each printContractFor: anArgumentName with: self].		
