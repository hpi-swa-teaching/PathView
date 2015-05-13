controls
indicateClassMessages
	"If browser is toggled to class code, clear pane from any contract-source code"
	self codeSource: nil.
	^ super indicateClassMessages