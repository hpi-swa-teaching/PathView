concerns
testsForConcerns: aCollection
	| set |
	set := Set new.
	aCollection do: [:concern | 
		set addAll: (self concernMapping at: concern)].
	^ set