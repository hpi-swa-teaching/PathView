instance creation
vertices: aCollection
	| newMe |
	newMe := self new.
	newMe setVertices: aCollection.
	newMe constraints first center: aCollection first.
	newMe constraints second center: aCollection last.
	^newMe