corner-oriented layout
nextFreeCorner
	"Return the next corner of the receiver where a neighbor should be assigned to."
	
	(corneringNodes anySatisfy: #isNil)
		ifTrue: [ | anyAssignedCorner freeCorners | "There is a free corner available"
			anyAssignedCorner := nil.
			freeCorners := self class cornerOrdering asOrderedCollection.
			corneringNodes withIndexDo: [ :element :i |
				element ifNotNil: [
					anyAssignedCorner ifNil: [ anyAssignedCorner := i - 1 ].
					freeCorners remove: i - 1 ] ].
			false & self class closeNeighbors & anyAssignedCorner notNil ifTrue: [ | result |
				"Ignore the cornerOrdering and return a corner close to another, already assigned corner."
				result := freeCorners first.
				freeCorners do: [ :corner |
					(self distanceOfCorner: corner to: anyAssignedCorner) < (self distanceOfCorner: result to: anyAssignedCorner)
						ifTrue: [ result := corner ] ].
				^ result ].
			^ freeCorners first ].
	^ nil