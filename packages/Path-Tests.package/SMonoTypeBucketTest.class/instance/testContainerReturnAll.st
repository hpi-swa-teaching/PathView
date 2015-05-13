testing-container
testContainerReturnAll
	| type |
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOverReally.
	type := self bucket returnFor: SHClassA>>#assoc:collection:dict:number:.
	self assert: type = (self 
							container: Array 
							elements: (self 
											container: Object 
											elements: Object 
											keys: self byteSymbol) 
							keys: nil).