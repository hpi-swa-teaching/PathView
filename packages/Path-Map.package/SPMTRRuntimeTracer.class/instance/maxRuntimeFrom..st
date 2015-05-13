visualization-runtime
maxRuntimeFrom: aDictionary
	| highscore |
	highscore := OrderedCollection new.
	aDictionary associationsDo: [:each | highscore add: each].
	^ (highscore asSortedCollection: [:a :b | a value > b value]) first