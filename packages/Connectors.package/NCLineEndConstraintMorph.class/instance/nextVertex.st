private
nextVertex
	"Answer the point at the next vertex toward the other end of the line"
	^firstVertex
		ifTrue: [ constrained nextToFirstPoint ]
		ifFalse: [ constrained nextToLastPoint ]