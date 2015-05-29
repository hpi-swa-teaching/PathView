layout force-based
isLayoutRunning
	"If we use a separate process, we can just check whether we currently have one running.
	In case of stepping, we sometimes start stepping unwanted, e.g. sometime when moving the windows.
	We use the layoutProcess variable to store a flag, whether we are actually layouting, to avoid accidental movement of the class-morphs."
	
	^ self useSeparateLayoutProcess
		ifTrue: [ layoutProcess notNil ]
		ifFalse: [ layoutProcess == true and: [ self isStepping ] ]