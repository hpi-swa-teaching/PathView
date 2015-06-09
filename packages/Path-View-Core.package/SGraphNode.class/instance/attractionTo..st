corner-oriented layout
attractionTo: anotherNode
	"Count the number of edges connecting the receiver with anotherNode."
	
	^ self edges
		inject: 0
		into: [ :attraction :edge |
			((edge fromNode = self and: [ edge toNode = anotherNode ])
			or: [ edge toNode = self and: [ edge fromNode = anotherNode ] ])
				ifTrue: [ attraction + 1 ]
				ifFalse: [ attraction ] ]