wiring
startWiringFrom: aMorph event: anEvent
	"NCAAConnectorMorph new startWiringFrom: (Morph new openInWorld)"

	| hand |
	self isWiring: true.
	hand := anEvent hand.
	self connectStartTo: aMorph at: anEvent position.
	constraints second position: hand cursorPoint.
	self openInWorld.
	self trigger: #wireFrom withArguments: { constraints last . hand lastEvent }.
