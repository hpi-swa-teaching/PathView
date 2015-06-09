corner-oriented layout
freeCorners
	"Return free corners, in a certain sequence."
	
	| freeCorners |
	freeCorners := self class cornerOrdering asOrderedCollection.
	corneringNodes withIndexDo: [ :element :i | element ifNotNil: [ freeCorners remove: i - 1 ] ].
	^ freeCorners