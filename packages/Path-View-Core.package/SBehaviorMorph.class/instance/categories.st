layout and labels
categories
	
	^ klass organization categories
		reject: [ :each | each == self class diagramCodeCategory ]