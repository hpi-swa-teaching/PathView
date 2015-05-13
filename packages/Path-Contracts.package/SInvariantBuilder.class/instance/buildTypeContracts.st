building
buildTypeContracts

	| memberType |
	self instVars withIndexDo: [:instVarName :i |
		memberType := self typeInfo at: i.
		memberType ifNotNil: [memberType printContractFor: instVarName with: self]].