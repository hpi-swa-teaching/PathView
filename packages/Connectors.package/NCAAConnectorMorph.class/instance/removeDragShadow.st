drop shadows
removeDragShadow
	"I'm starting to be dragged but I'm not in the hand yet.
	So use the hand's drop shadow information to set my own drop shadow"

	self changed.
	self
		removeProperty: #dragShadowOffset;
		removeProperty: #dragShadowColor.
	self layoutChanged.
	self changed.