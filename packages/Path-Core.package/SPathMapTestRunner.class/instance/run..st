actions
run: aSymbol
	| flap |
	flap := self getOpenedAnalysisFlap. 
	(flap isNil or: [flap externalName asSymbol == #globalOptions])
		ifTrue: [self pathMap runTests: aSymbol]
		ifFalse: [self pathMap runTests: aSymbol with: flap externalName asSymbol].