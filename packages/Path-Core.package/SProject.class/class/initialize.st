class initialization
initialize
	"self initialize"
	super initialize.
	self
		reset;
		addPredefinedProjects;
		addSystemChangeNotifierForAddedClasses;
		addSystemChangeNotifierForSourceCodeChanges;
		setNullProjectAsCurrent.