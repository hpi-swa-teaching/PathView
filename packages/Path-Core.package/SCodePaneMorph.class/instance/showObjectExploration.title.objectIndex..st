explore actions
showObjectExploration: aSymbol title: aString objectIndex: aNumber

	| morph |
	morph := self objectExplorationMorphs 
				at: (aSymbol asString, aNumber asString) asSymbol
				ifAbsentPut: [SObjectExplorationMorph 
								on: self 
								title: aString 
								kindOfObjects: aSymbol 
								objectIndex: aNumber
								callNode: self callNode 
								color: self color].
	self 
		addObjectExplorationMorph: morph;
		refreshScrollbars.