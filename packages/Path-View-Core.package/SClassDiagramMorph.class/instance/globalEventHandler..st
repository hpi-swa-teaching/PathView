event handling
globalEventHandler: anEvent
	
	klass = anEvent itemClass
		ifTrue: [ self perform: self class systemEventHandler with: anEvent ].