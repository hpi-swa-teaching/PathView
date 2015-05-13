actions
loadTypeHarvest
	| typeHarvestBin typeHarvest bucket |
	(typeHarvestBin := zip memberNamed: SPVMczWriter typeHarvestMember, '.bin') ifNil: [^ self].
	(typeHarvest := zip memberNamed: SPVMczWriter typeHarvestMember) ifNil: [^ self].
	[bucket := (DataStream on: typeHarvestBin contentStream) next.
	 bucket := bucket ifNotNil: [bucket convertToTypes]]
					on: Error
					do: [:err | bucket := nil].
	bucket ifNil: [[bucket := Compiler evaluate: typeHarvest]
					on: Error
					do: [:err | ^ self inform: 'Error loading stored type information.']].
	version refinements
		at: SPVMczWriter typeHarvestMember
		put: bucket.

