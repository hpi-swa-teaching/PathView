building
buildWith: aBuilder 
	
	self
		buildWindowWith: aBuilder;
		resizeWindow.
	^ self windowMorph