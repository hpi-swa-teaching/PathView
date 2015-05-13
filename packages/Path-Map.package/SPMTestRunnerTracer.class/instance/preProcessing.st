tracing
preProcessing
	self pathMap resetAllChildren.
	self pathMap violations: nil.	
	self testRunner reset.
	self setColorPropagation.