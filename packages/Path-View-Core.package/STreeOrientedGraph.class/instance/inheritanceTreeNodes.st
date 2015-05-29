accessing
inheritanceTreeNodes
	
	| set |
	set := Set new.
	self collectChildrenOf: root into: set.
	^ set