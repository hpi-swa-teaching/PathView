geometry
asVectorFrom: aMorph 
	"Answer a Point representing me as a vector. Ignore 
	intermediate vertices"
	^ aMorph == self startConnection
		ifTrue: [line vertices last - line vertices first]
		ifFalse: [line vertices first - line vertices last]