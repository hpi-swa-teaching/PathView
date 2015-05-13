group button
removeConcernGroup: aGroup
	(UIManager default confirm: 'Remove group and all included concerns?')
		ifTrue: [ (self concernGroups at: aGroup) 
					do: [:each | 
						self concernColors removeKey: each ifAbsent: [].
						self concernMapping removeKey: each ifAbsent: []].
				self concernGroups removeKey: aGroup.
				self 
					refreshDeselectedTestTree;
					refreshDeselectedConcernTree].