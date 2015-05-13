associations
openInheritanceConnectionsWithAll: collectionOfClassMorphs
	"Open all super- and sub-class connections from the receiver to any of the ClassMorphs in collectionOfClassMorphs.
	Only one super-class-morph is connected, but multiple sub-class-morphs."
	
	| selfMorph |
	selfMorph := self elementClassMorph.
	(self superclassMorphIn: collectionOfClassMorphs) ifNotNilDo: [ :morph |
			SInheritanceConnector openFor: selfMorph connectedTo: morph ].
	
	"Do not open connections to subclasses. The subclasses will open their own superclass-connections."
"	(collectionOfClassMorphs select: [ :each | klass allSubclasses includes: each visualizedClass ])
		do: [ :subClassMorph |
			SInheritanceConnector openFor: subClassMorph connectedTo: selfMorph ]."