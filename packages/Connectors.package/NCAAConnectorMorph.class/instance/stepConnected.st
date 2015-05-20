stepping and presenter
stepConnected
	"Called upon step in Connected state."

	self stepEditing.
	self isOrthogonal
		ifTrue: [
			line vertices size > 2
				ifTrue: [self orthogonalizeVertex: 2].
			line vertices size > 3
				ifTrue: [self orthogonalizeVertex: line vertices size - 1].
			line vertices size = 2 ifTrue: [ | rect |
				rect := Rectangle origin: line vertices first corner: line vertices second.
				(rect width ~= 0 and: [rect height ~= 0 ]) ifTrue: [ self setVertices: (rect corners copyFrom: 1 to: 3) ].
			].
	].
	self reduceVertices.
	self fixDegenerateLine.

	(self hasProperty: #inputOwnerChanged)
		ifTrue: [ self removeProperty: #inputOwnerChanged.
			WorldState addDeferredUIMessage: [ self triggerEtoyEvent: #attachmentOwnerChanged ]].