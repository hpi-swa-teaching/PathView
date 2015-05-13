testing-container
testContainerReturn
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOver.
	self assert: (self bucket 
					returnFor: SHClassA>>#assoc:collection:dict:number:) = 
						(self 
							container: Array 
							elements: Object 
							keys: nil).