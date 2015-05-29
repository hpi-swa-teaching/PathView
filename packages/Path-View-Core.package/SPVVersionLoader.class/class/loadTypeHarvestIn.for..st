as yet unclassified
loadTypeHarvestIn: aVersion for: aProject
	| typeHarvest |
	(typeHarvest := aVersion refinements
								at: SPVMczWriter typeHarvestMember
								ifAbsent: [])
		ifNil: [Transcript show: 'No type harvest in ', aVersion printString; cr. ^ self].
	(aProject typesBucket = typeHarvest) ifFalse: [
		aProject typesBucket: typeHarvest].
