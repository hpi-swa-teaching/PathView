initialization
reinitializeFSM
	"Handy in debugging"
	eventHandler := self class eventHandlerClass eventHandlerFor: self.
	self initializeFSM.