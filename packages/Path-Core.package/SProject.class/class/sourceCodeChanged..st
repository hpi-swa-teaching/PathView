system events
sourceCodeChanged: anEvent
	self allProjects do: [:each | each changed: anEvent].