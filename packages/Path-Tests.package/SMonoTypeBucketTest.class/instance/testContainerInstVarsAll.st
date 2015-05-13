testing-container
testContainerInstVarsAll
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOverReally.
	self assert: ((self bucket membersFor: SHClassA) at: 2) = 
				(self 
					container: Object 
					elements: Object 
					keys: self byteSymbol).