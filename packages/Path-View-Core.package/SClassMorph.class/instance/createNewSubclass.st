toolbar
createNewSubclass
	
	| name |
	name := self uniqueClassnameBasedOn: #SubclassOf, self klass name.
	(RBAddClassRefactoring
		addClass: name
		superclass: self klass
		subclasses: {}
		category: self klass category)
			execute.
	^ Smalltalk at: name