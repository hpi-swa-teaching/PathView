concern button
removeConcern
	| concerns |
	(UIManager default confirm: 'Remove concern?')
		ifTrue: [	concerns := self concernGroups at: self selectedGroup.
				concerns remove: self selectedConcern.
				self concernColors removeKey: self selectedConcern ifAbsent: [].
				self concernMapping removeKey: self selectedConcern ifAbsent: [].		
				self 
					refreshDeselectedTestTree;
					refreshDeselectedConcernTree].