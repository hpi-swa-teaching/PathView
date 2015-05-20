layout
layoutChanged
	| oldBounds |
	oldBounds := self outerBounds.
	self needsOwnerSet: true.
	constraints do: [ :ea | ea forceRedraw ].
	bounds := self submorphBounds.
	fullBounds := self outerBounds.
	fullBounds ~= oldBounds ifTrue: [
		oldBounds ifNotNil: [ self invalidRect: oldBounds ].
		self invalidRect: fullBounds ].
	owner ifNotNil: [ owner layoutChanged ].