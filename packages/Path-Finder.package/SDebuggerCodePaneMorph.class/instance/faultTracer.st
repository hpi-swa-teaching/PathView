accessing
faultTracer
	self flag: #mpe. "ToDo: Refactor! Law of Demeter is broken!"
	^ self callNode callTreeModel pathFinder coverageTracer