auto connectors
checkOpenConnectors: openClassMorphs
	
	^ self class autoBuildConnections
	and: [ "Check, whether we could actually open any connectors."
		openClassMorphs size = 1
			ifTrue: [ "First class-morph -> Just need to have a superclass or any info on any instance-variable."
				self visualizedClass superclass notNil
				or: [ self instanceVariableTypes notEmpty ] "TODO: at least information about on instance variable" ]
			ifFalse: [ "Other morphs already present. Check, whether we could connect to any of them."
				(self superclassMorphIn: openClassMorphs) notNil
				or: [ self klass allSubclasses anySatisfy: [ :class | openClassMorphs anySatisfy: [ :morph | morph visualizedClass = class ] ] ]
				or: [ self instanceVariableTypes anySatisfy: [ :class | openClassMorphs anySatisfy: [ :morph | morph visualizedClass = class ] ] ] ] ]
	and: [ UIManager default confirm: 'Automatically create connections?' ]