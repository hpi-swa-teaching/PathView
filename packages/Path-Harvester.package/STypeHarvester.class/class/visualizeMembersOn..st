pathMap-visualization
visualizeMembersOn: aPathMap
	| members morph | 
	members := (self bucketFrom: aPathMap) members.
	members keysAndValuesDo: [:class :types | 
		morph := self getClassMorph: class with: Color gray from: aPathMap.
		morph ifNotNil: [
			self addInfo: [:stream | 
					types do: [:each | each ifNotNil: [stream 
														nextPutAll: each asString; 
														nextPut: Character cr]]] 
				to: morph 
				withLabel: 'member types']].