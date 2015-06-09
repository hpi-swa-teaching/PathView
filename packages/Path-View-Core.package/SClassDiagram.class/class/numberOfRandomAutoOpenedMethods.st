debug graph layout
numberOfRandomAutoOpenedMethods
	"The returned number of methods is opened randomly and automatically when a category of classes
	is dragged into a graph-diagram."
	
	^ self debugOpenRandomMethods
		ifTrue: [ 3 ]
		ifFalse: [ 0 ]