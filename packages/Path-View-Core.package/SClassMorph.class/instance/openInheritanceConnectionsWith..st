associations
openInheritanceConnectionsWith: classMorph
	"Open all super- and sub-class connections from the receiver to any of the ClassMorphs in collectionOfClassMorphs"
	
	^ self openInheritanceConnectionsWithAll: { classMorph }