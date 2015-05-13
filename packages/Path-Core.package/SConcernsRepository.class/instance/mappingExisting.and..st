public api
mappingExisting: aConcern and: aMethodRef
	(self mapping includesKey: aConcern) ifFalse: [^ false].
	^ (self mapping at: aConcern) includes: aMethodRef