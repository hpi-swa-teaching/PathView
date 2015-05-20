*connectorsShapes-flaps
quadsDefiningClassDiagramConnectorsFlap
	"Answer a structure defining the items on the default Class Diagram flap"
	"Flaps newClassDiagramConnectorsFlap openInWorld; setToPopOutOnDragOver: false."

	^ #(
	(NCLabelMorph newStandAlone 'Label' 'A label')
	(NCSmartLabelMorph newStandAlone 'Smart Label' 'A label that positions itself')
	(NCAAConnectorMorph	newDirectionalAssociation	'Association'	'A class association for UML Class Diagrams')
	(NCAAConnectorMorph	newAssociation	'Association'	'A class association for UML Class Diagrams')
	(NCAAConnectorMorph newGeneralizationRelationship	'Generalization' 'An inheritance (generalization) connection for UML Class Diagrams')
	(NCAAConnectorMorph newImplementationRelationship 'Implementation' 'An implementation relationship for UML Class Diagrams')
	(NCTextRectangleMorph newUMLClassSymbol 'Class' 'A UML class symbol')
	(NCTextRectangleMorph newUMLClassSymbolWithTwoBlocks 'Class2' 'A UML class symbol')
	(NCTextRectangleMorph newUMLClassSymbolWithThreeBlocks 'Class3' 'A UML class symbol')
	(NCCompositeStateMorph newUMLPackage 'UML Package' 'A UML package shape')
	(NCNoteMorph  newStandAlone 'Note' 'An annotation')
	)