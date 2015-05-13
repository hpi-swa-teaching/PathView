path view
getMethodsFromTrace
	| methods |
	methods := Set new.
	self traverseCallTree: self rootNode 
		 with: [:each | methods add: each methodReference].
	^ methods