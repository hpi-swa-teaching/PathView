visualization-ratio
computeRatioAndSort: aDictionary
	| ratioCollection |
	ratioCollection := OrderedCollection new.
	aDictionary associationsDo: [:each | 
		ratioCollection add: (each key -> (each value second asNanoSeconds / 
											each value first))].
	^ ratioCollection asSortedCollection: [:a :b | a value > b value]