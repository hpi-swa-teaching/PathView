reflection
hierarchyFrom: superstates andEvents: events into: aStream startingAt: parent level: level 
	aStream
		tab: level;
		nextPutAll: parent.
	events at: parent ifPresent: [ :evs |
		aStream space.
		evs do: [ :e | aStream nextPut: $(; nextPutAll: e; nextPut: $) ] separatedBy: [ aStream space ].
	].
	aStream cr.
	superstates keysAndValuesDo: 
			[:k :v | 
			v = parent 
				ifTrue: 
					[self 
						hierarchyFrom: superstates
						andEvents: events
						into: aStream
						startingAt: k
						level: level + 1]]