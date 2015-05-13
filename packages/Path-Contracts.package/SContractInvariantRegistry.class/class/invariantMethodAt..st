accessing
invariantMethodAt: aClassOrganizer 
	^ InvariantMethods 
		at: aClassOrganizer
		ifAbsent: nil