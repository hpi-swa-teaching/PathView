pathMap-visualization
visualizeClassLevelOn: aPathMap
	| members morph | 
	members := (self bucketFrom: aPathMap) members.
	members keysAndValuesDo: [:class :ranges | 
		morph := self getClassMorph: class with: Color black from: aPathMap.
		morph ifNotNil: [morph additionalInfo: ranges]].