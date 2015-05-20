event handling
exitEditing
	self removeDragShadow.
	self newCursor: Cursor normal.
	self removeShortEndSegments.
	self
		valueOfProperty: #editingHandle
		ifPresentDo: [:handle | self isOrthogonal
				ifTrue: [handle vertices
						do: [:vert | self orthogonalizeVertex: vert]]].
	self removeProperty: #editingStartPosition.
	self removeProperty: #editingHandle.
	constraints
		do: [:ea | ea forceRedraw]