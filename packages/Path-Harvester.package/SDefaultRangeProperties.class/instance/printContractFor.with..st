contracts
printContractFor: anArgumentName with: aBuilder

	self nilAllowed
		ifFalse: [aBuilder printSourceLine: 
					('SContract expectNotNil: ', anArgumentName, '.')].