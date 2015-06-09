initialization
aboutToBeGrabbedBy: aHand
	"Disable being grabbable and close the popup when user accidentally grabs it."
	
	self disappear.
	^ nil