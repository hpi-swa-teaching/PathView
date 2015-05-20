traversal
pathFrom: v1 to: v2 
	| v path pred |
	pred := IdentityDictionary new.
	self 
		bfsStartingAt: v1
		nodeBlock: nil
		edgeBlock: nil
		dist: nil
		pred: pred
		states: nil.
	path := OrderedCollection new: pred size.
	v := v2.
	
	[path addFirst: v.
	v := pred at: v
				ifAbsent: 
					[^{ 
						}].
	v == v1] 
			whileFalse.
	path addFirst: v1.
	^path