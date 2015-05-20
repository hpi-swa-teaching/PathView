wiring
startWiringFromEvent: anEvent
	"NCAAConnectorMorph new startWiringFromEvent: ActiveHand lastMouseEvent"

	self isWiring: true.
	self position: anEvent position.
	constraints first position: anEvent position; input: nil.
	constraints second position: anEvent position.
	self openInWorld.
	self trigger: #wireFrom withArguments: { constraints last . anEvent }.
