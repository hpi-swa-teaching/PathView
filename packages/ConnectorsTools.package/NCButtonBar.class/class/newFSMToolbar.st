instance creation
newFSMToolbar
	"Answer a new toolbar with the standard FSM symbols"
	"NCButtonBar newFSMToolbar openInHand"
	| newMe |
	newMe := self new.
	newMe
		addLabel: 'State\Diagram' withCRs;
		extent: 77@404.
	(newMe addWiringButton: NCAAConnectorMorph newStateTransition) actionSelector: #startWiringLabeled:; arguments: { 'event' }.
	newMe addWiringButton: NCAAConnectorMorph new.

	{
		NCStateDiagramMorph newStateSymbol.
		NCEllipseMorph newStartState.
		NCEllipseMorph newEndState.
		NCCompositeStateMorph new.
		NCScrolledCompositeStateMorph new
	} do: [ :ea | (newMe addButtonWithPrototype: ea) extent: 60@40 ].

	newMe addMorphBack: self saveAsGIFButton.

	^ newMe extent: 77@404; layoutChanged; fullBounds; yourself