computation
splitIntoGroups: collectionOfNodes
	
	| copy groups |
	copy := collectionOfNodes copy.
	groups := OrderedCollection new.
	[ copy notEmpty ]
		whileTrue: [ | start set |
			start := copy anyOne.
			set := Set new.
			groups add: set.
			self moveNeighborsOf: start from: copy into: set ].
	^ groups