testing
testModelCreation

	self assert: self browserModel notNil.
	self assert: self browserModel callTreeTracer notNil.
	self assert: self browserModel callTreeModel notNil.
	self assert: self browserModel testChooserModel notNil.
	
	self assert: self browserModel callTreeTracer selectedCategories = 
		SProject current categories.
	self assert: self browserModel callTreeTracer callTreeModel == 
		self browserModel callTreeModel.
	self assert: self browserModel callTreeModel tracer == 
		self browserModel callTreeTracer.
	self assert: self browserModel testChooserModel tracer == 
		self browserModel callTreeTracer.