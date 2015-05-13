*Path-Core
authorMostChanges
	<description: 'Most changes'>
	| authorBag |
	authorBag := Bag new.
	self changes do: [:each | authorBag add: each first].
	^ authorBag sortedCounts first value