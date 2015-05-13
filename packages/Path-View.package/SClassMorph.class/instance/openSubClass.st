toolbar
openSubClass
	
	| subclass |
	subclass := self chooseSubclass.
	subclass = self newSubclassMarker ifTrue: [ subclass := self createNewSubclass ].
	subclass ifNotNil: [ | connector target |
		target := SClassMorph on: subclass.
		self openNewClassMorph: target.
		connector := SInheritanceConnector openFor: target connectedTo: self inheritanceConnectorSource.
		self addDependent: connector ].