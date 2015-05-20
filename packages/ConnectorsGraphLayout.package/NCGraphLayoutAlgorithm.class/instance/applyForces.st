layout
applyForces
	| applied |
	applied := 0.
	self nodes with: self forces
		do: [:node :force | | newBounds |
			(force x > 1.0 or: [ force y > 1.0 ]) ifTrue: [
				newBounds := (node bounds translateBy: force) translatedToBeWithin: layoutMorph bounds.
				node position: newBounds origin asIntegerPoint.
				applied := applied + 1.]
		 ].
	^applied