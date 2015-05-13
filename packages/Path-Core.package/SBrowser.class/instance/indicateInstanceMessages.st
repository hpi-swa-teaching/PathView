controls
indicateInstanceMessages
	"If browser is toggled to instance code, clear pane from any contract-source code"
	self codeSource: nil.
	^ super indicateInstanceMessages