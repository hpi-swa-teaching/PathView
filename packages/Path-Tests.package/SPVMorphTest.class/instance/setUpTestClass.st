running
setUpTestClass

	testClass := ClassBuilder new
		superclass: Object
		subclass: self class testClassName asSymbol
		instanceVariableNames: self class instanceVariableNames
		classVariableNames: self class classVariableNames
		poolDictionaries: ''
		category: self class sandboxCategory.