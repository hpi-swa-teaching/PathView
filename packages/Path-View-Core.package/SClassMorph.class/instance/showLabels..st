toolbar
showLabels: showLabels
	"Pass the message to nested class-morphs / implementation-morphs / classname-morphs."
	
	self classDiagramSubmorphs do: [ :each | each showLabels: showLabels ].