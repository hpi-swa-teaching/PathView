path view
getClassesFromTrace
	| classes |
	classes := Set new. 
	self traverseCallTree: self rootNode with: [:each | 
		each clientClass isMeta
			ifTrue: [classes add: each clientClass theNonMetaClass]
			ifFalse: [classes add: each clientClass]].
	^ classes