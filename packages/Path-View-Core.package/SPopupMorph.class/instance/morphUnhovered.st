popup
morphUnhovered
	"We cannot dismiss the popup, if the mouse leaves the owner; the popup might contain buttons, etc. Only disappear, if the popup itself is not hovered.
	The popup-morph sometimes misses out on mouse-leave events, if the mouse is moved too fast. Try to use the events of the containing morph,
	as they seem more reliable. Still, this not always suffices to remove the toolbar when needed."
	
	(self intersects: self activeHand cursorBounds)
		ifFalse: [ self disappear ]