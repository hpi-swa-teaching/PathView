testing-container
testContainerArguments
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOver.
	self assert: ((self bucket argumentsFor: SHClassA>>#assoc:collection:dict:number:) 
					at: 1) = 	(self container: Association 
								elements: SmallInteger 
								keys: self byteSymbol).