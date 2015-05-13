building
buildTypeContracts
	| argumentType |
	self arguments withIndexDo: [:arg :i | 
		argumentType := self typeInfo at: i.
		argumentType ifNotNil: [argumentType printContractFor: arg with: self]]