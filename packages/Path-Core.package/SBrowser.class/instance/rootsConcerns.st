concerns
rootsConcerns
	(self refreshRequired and: [self selectedMethodReference notNil]) 
		ifTrue: [self cacheConcerns: self involvedConcerns].
	^ (self cacheConcerns keys 
		reject: [:each | (self cacheConcerns at: each) isEmpty]) asSortedCollection