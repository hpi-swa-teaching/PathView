building
buildTypeContracts
	self typeInfo ifNil: [^ self].
	self typeInfo printContractFor: '(SContract result)' with: self.