system events
addSystemChangeNotifierForSourceCodeChanges
	"self addSystemChangeNotifierForSourceCodeChanges"
	SystemChangeNotifier uniqueInstance 
		notify: self 
		ofEvents: SystemChangeNotifier uniqueInstance allSystemEvents
		using: #sourceCodeChanged:
	