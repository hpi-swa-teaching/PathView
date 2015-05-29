initialization
initializeSmoothing
	"This gets called when the two smoothable components are set: the owner and the mini-map.
	There seems to be no event, when both are set at the same time."
	
	self setSmoothing: self class defaultSmoothing.