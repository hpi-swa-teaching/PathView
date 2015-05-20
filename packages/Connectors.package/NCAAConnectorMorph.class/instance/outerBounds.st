layout
outerBounds
	"Return the 'outer' bounds of the receiver, e.g., the bounds that need to be invalidated when the receiver changes."
	| box |
	box := self bounds.
	self hasDragShadow ifTrue:[box := self expandFullBoundsForDragShadow: box]
		ifFalse: [ self hasDropShadow ifTrue:[box := self expandFullBoundsForDropShadow: box]].
	^box