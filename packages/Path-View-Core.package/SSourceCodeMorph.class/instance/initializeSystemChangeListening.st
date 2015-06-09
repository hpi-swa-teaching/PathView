initialization
initializeSystemChangeListening
	
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfChange: #Modified
		using: #updateMethod:.