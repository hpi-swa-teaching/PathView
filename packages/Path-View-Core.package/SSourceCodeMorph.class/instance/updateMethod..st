event handling
updateMethod: event
	
	event itemSelector = self selector
		ifTrue: [ model changed: #contents ].