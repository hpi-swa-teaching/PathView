wiring
startWiringFromPoint: aPoint
	"NCAAConnectorMorph new startWiringFromPoint: 200@200"

	| hand |
	hand := World currentHand.
	self isWiring: true.
	constraints first position: aPoint; input: nil.
	constraints second position: hand lastEvent cursorPoint.
	self openInWorld.
	self trigger: #wireFrom withArguments: { constraints last . hand lastEvent }.
