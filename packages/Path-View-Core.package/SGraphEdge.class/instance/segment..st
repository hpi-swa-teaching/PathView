calculations
segment: segmentNumber
	"Return the start and end position (as association) of the segment <segmentNumber>. segmentNumber is 1-based (the first segment is represented by 1)."
	
	| segmentStart segmentEnd |
	segmentStart := segmentNumber = 1
		ifTrue: [ self fromNode absoluteBounds center ]
		ifFalse: [ bendPositions at: segmentNumber - 1 ].
	segmentEnd := bendPositions size >= segmentNumber
		ifTrue: [ bendPositions at: segmentNumber ]
		ifFalse: [ self toNode absoluteBounds center ].
	^ segmentStart -> segmentEnd