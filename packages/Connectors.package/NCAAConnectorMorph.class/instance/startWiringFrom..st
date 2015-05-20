wiring
startWiringFrom: aMorph
	"NCConnectorMorph new startWiringFrom: (Morph new openInWorld)"

	| hand |
	hand := World currentHand.
	self isWiring: true.
	self connectStartTo: aMorph at: hand position.
	constraints second position: hand position.
	self openInWorld.
	self trigger: #wireFrom withArguments: { constraints last . hand lastEvent }.
