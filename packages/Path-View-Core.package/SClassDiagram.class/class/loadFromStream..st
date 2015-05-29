save/restore
loadFromStream: aStream
	
	| stream morph |
	stream := (aStream class = FileStream
		ifTrue: [(MultiByteBinaryOrTextStream with: (aStream binary contentsOfEntireFile)) 
					binary reset]
		ifFalse: [aStream binary reset]).
	morph := stream fileInObjectAndCode.
	^ morph