start tools
openDebuggerOn: aMethodReference
	| method |
	method := self selectedMethodReference.
	[SBreakpointManager 
		installInClass: method actualClass selector: method methodSymbol.
	aMethodReference actualClass run: aMethodReference methodSymbol] 
		ensure: [SBreakpointManager unInstall: method compiledMethod].