*connectorsShapes-flaps
quadsDefiningFSMConnectorsFlap
	"Answer a structure defining the items on the default FSM flap"
	"Flaps newFSMConnectorsFlap openInWorld; setToPopOutOnDragOver: false."

	^ #(
	(NCLabelMorph newStandAlone 'Label' 'A label')
	(NCSmartLabelMorph newStandAlone 'Smart Label' 'A label that positions itself')
	(NCAAConnectorMorph newStateTransition 'State Transition' 'A state transition for UML State Diagrams')
	(NCTextRectangleMorph newStateSymbol 'State' 'A UML State shape')
	(NCCompositeStateMorph newCompositeState 'Composite State' 'A UML composite state shape')
	(NCScrolledCompositeStateMorph newStandAlone 'Scrolled State' 'A UML State shape with scrollbars')
	(NCEllipseMorph newStartState 'Start State' 'A UML start state shape')
	(NCEllipseMorph newEndState 'End State' 'A UML end state shape')
	"(NCButtonBar newFSMToolbar 'FSM ButtonBar' 'A buttonBar for State Machine drawings')"
	)