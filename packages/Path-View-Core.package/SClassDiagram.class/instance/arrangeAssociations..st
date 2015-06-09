layout graph-based
arrangeAssociations: collectionOfClassMorphs
	
	collectionOfClassMorphs do: [ :aMorph | | classMorphs |
		classMorphs := collectionOfClassMorphs copyWithout: aMorph.
		aMorph
			openAssociationConnectionsWithAll: classMorphs;
			openInheritanceConnectionsWithAll: classMorphs ].