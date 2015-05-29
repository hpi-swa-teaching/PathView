dropping/grabbing
openSuperClass: aClass
	
	| target |
	aClass ifNil: [ ^ nil ].
	self abandon.
	connector abandon.	
	target := SClassMorph on: aClass.
	SInheritanceConnector openFor: (connector sourceMorph) connectedTo: target.		
	SInheritanceConnector openFor: target connectedTo: connector targetMorph.
	target openInHand.
	connector sourceMorph highlightClassMorphs: target klass.
	^ target