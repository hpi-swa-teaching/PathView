instance creation
commonSuperclassOf: aClassArray
	
	^ (aClassArray
			inject: aClassArray first allSuperclasses
			into: [:sub :c | c allSuperclasses intersection: sub])
				first