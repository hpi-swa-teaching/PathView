color propagation
forColors: aCollectionOfColors
	{Color red. Color yellow. Color green} do: [:each | 
		(aCollectionOfColors includes: each) ifTrue: [^ each]].
	^ nil