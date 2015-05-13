system events
addSystemChangeNotifierForAddedClasses
	"self addSystemChangeNotifierForAddedClasses"
	SystemChangeNotifier uniqueInstance 
		notify: self 
		ofEvents: {'classAddedEvent:'. 'classModifiedEvent:'. 'classRecategorizedEvent:'. 'classRemovedEvent:'. 'classRenamedEvent:'. 'classReorganizedEvent:'. 'classModifiedEvent:'. 'classModifiedEvent:'} 
		using: #systemClassChanged:
	