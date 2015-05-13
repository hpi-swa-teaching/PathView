actions
fileOutTypeHarvest: aProject
	| types typesBin |
	types := (aProject typesBucket storeString).
	typesBin := (self serializeInBinary: aProject typesBucket convertToSymbols).
	zip
		addString: types as: SPVMczWriter typeHarvestMember;
		addString: typesBin as: SPVMczWriter typeHarvestMember, '.bin'.
