class initialization
startUp
	"This message is sent when the image is started. Delete the CurrentGraph class-variable, that is only used for debugging."
	
	super startUp.
	self deleteCurrentGraph.