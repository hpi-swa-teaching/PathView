associations
openAssociationConnectionsWithAll: collectionOfClassMorphs
	"Open all association-connectors from the receiver to any of the ClassMorphs in collectionOfClassMorphs and backwards.
	Return a collection of all new opened associations."
	
	^ collectionOfClassMorphs
		gather: [ :each |
			(each openAssociationConnectionsTo: self)
			addAll: (self openAssociationConnectionsTo: each);
			yourself ]