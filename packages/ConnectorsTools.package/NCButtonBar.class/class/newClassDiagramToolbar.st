instance creation
newClassDiagramToolbar
	"Answer a new toolbar with the standard class diagram symbols"
	"NCButtonBar newClassDiagramToolbar openInHand"
	| newMe |
	(newMe := self new)
		extent: 80@540;
		addLabel: 'Class\Diagram' withCRs;
		addWiringButton: NCAAConnectorMorph newAssociation;
		addWiringButton: NCAAConnectorMorph newDirectionalAssociation;
		addWiringButton: NCAAConnectorMorph newGeneralizationRelationship;
		addWiringButton: NCAAConnectorMorph newImplementationRelationship.

	{
		NCTextRectangleMorph  newUMLClassSymbol.
		NCTextRectangleMorph newUMLClassSymbolWithTwoBlocks.
		NCTextRectangleMorph newUMLClassSymbolWithThreeBlocks.
		NCCompositeStateMorph newUMLPackage.
		NCScrolledCompositeStateMorph newUMLPackage.
		NCNoteMorph newStandAlone.
	} do: [ :ea | (newMe addButtonWithPrototype: ea) "extent: 53@50" ].

	newMe addWiringButton: NCAAConnectorMorph newNoteConnector.
	newMe addButtonWithPrototype: NCSmartLabelMorph newStandAlone.

	newMe addMorphBack: self saveAsGIFButton.

	^ newMe extent: 80@540;  layoutChanged; fullBounds; yourself