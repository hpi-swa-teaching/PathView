drop shadows
addDragShadow
	"I'm starting to be dragged but I'm not in the hand yet.
	So use the hand's drop shadow information to set my own drop shadow"

self flag: #ned.

	self changed.
	self setProperty: #dragShadowOffset toValue: ActiveHand shadowOffset.
	self setProperty: #dragShadowColor toValue: Color gray darker "ActiveHand shadowColor".
	self layoutChanged.
	self changed.