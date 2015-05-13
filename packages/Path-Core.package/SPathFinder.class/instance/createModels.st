building
createModels
	self callTreeTracer: (SCallTreeTracer on: SProject current).
	self callTreeModel: (self callTreeModelClass 
							on: self callTreeTracer
							pathFinder: self).
	self callTreeTracer callTreeModel: self callTreeModel.
	self testChooserModel: (STestChooserModel on: self callTreeTracer).