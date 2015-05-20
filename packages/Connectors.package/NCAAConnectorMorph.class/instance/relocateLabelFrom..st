connectors-labels
relocateLabelFrom: aRectangle
	"Given a prospective label location, answer a new rectangle which doesn't overlap me"
	| newBounds |
	newBounds := aRectangle.
	self validConnections do: [ :ea |
		newBounds := ea relocateLabelFrom: newBounds.
	].
	newBounds := line relocateLabelFrom: newBounds.
	^ newBounds
