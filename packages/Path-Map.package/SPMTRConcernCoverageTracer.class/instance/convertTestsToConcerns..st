visualization
convertTestsToConcerns: aCollection
	^ ((aCollection 
		inject: IdentitySet new 
		into: [:coll :test | 
			coll, (self project concerns 
					concernsOfGroup: self options concernGroup 
					andTest: test asMethodReference)]) asSortedCollection)
				select: [:each | self options getSelectedConcerns includes: each].