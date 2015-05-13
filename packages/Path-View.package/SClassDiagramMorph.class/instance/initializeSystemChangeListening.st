initialization
initializeSystemChangeListening
	
	self class interestingSystemEvents ifNotEmptyDo: [ :events |
		SystemChangeNotifier uniqueInstance
			notify: self
			ofEvents: events
			using: #globalEventHandler: ].