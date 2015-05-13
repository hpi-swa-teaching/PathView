testing
setUp

	oldCurrentProject := SProject current.
	SProject setCurrent: #sandbox.
	self browserModel: SPathFinder new.
	self browserMorph: (ToolBuilder build: self browserModel).
		
	