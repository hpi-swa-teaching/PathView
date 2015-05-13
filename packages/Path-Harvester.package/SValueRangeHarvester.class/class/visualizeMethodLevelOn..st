pathMap-visualization
visualizeMethodLevelOn: aPathMap
	| morph types |
	(self getHarvestedMethodReferencesFrom: aPathMap) 
		do: [:each | 
			morph := self getMorph: each with: Color black from: aPathMap.
			types := (self getTemporaryTypesFrom: each and: aPathMap), 
						(self getReturnTypesFrom: each and: aPathMap).
			self 
				setAdditionalColorsTo: morph basedOn: types;
				setAdditionalInfosFrom: each to: morph on: aPathMap].