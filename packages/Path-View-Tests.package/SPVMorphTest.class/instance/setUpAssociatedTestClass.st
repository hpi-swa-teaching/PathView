running
setUpAssociatedTestClass
	"Set up a class for associations - it and its superclasses will be the associations"
	associatedTestClass := ClassBuilder new
		superclass: Array
		subclass: (self class testClassName, 'Associated') asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self class sandboxCategory