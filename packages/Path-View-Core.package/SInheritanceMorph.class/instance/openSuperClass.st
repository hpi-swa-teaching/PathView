menu actions
openSuperClass
	
	| target |
	klass superclass isNil ifTrue: [^ self].
	target := SClassMorph on: klass superclass.
	SInheritanceConnector openFor: self classMorph connectedTo: target.
	self openNewClassMorph: target.