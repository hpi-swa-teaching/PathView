running
setUp
	SProjectTestResource allSubclasses 
		detect: [:each | each isInitialized]
		ifFound: [:each | STestResourceError signal.]
		ifNone: [].
	oldRegistry := SProject projectRegistry.
	oldCurrentProject := SProject current.
	SProject reset.
	SProject addProject: self project.
	SProject setCurrent: self projectSymbol.