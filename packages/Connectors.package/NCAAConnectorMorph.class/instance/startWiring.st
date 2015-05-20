wiring
startWiring
	"NCAAConnectorMorph new startWiring"
	| hand |
	hand := World currentHand.
	self isWiring: true.
	self visible: false.
	hand attachMorph: self.
	self position: self position + hand position - constraints first center.
	self trigger: #wireMorph withArguments: { hand lastEvent }.
