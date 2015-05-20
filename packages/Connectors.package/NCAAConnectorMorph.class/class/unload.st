class initialization
unload
	Smalltalk removeFromStartUpList: self.

	ScriptingSystem removeCustomEventNamed: #connectedTo for: self ;
		removeCustomEventNamed: #disconnectedFrom for: self;
		removeCustomEventNamed: #sourceConnected for: self;
		removeCustomEventNamed: #sourceDisconnecting for: self;
		removeCustomEventNamed: #destinationConnected for: self;
		removeCustomEventNamed: #destinationDisconnecting for: self.