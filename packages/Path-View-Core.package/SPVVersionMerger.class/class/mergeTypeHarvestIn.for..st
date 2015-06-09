as yet unclassified
mergeTypeHarvestIn: aVersion for: aProject
	| typeHarvest |
	(typeHarvest := aVersion refinements
								at: SPVMczWriter typeHarvestMember
								ifAbsent: [])
		ifNil: [Transcript show: 'No type harvest in ', aVersion printString; cr. ^ self].
	(aProject typesBucket = typeHarvest) ifFalse: [
		aProject typesBucket explore. typeHarvest explore.  
		(self confirm: 'Should I replace type harvest information for ', aProject, '?')
			ifTrue: [aProject typesBucket: typeHarvest]].
