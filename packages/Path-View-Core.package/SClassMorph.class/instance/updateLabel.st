event handling
updateLabel 
	"sm - I assume this is called when a class name is refactored"
	
	super updateLabel.
	self labelOverlayMorph submorphs first contents: klass asString