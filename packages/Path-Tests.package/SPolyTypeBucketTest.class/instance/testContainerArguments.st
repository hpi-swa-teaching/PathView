testing-container
testContainerArguments
	| type |
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOver.
	type := ((self bucket 
				argumentsFor: SHClassA>>#assoc:collection:dict:number:) at: 1) anyOne.
	self assert: type = (self container: Association 
									elements: {SmallInteger} 
									keys: {self byteSymbol}).
	type := ((self bucket 
				argumentsFor: SHClassA>>#assoc:collection:dict:number:) at: 2) anyOne.	
	self assert: type = (self container: OrderedCollection 
									elements: {SmallInteger. self byteString} 
									keys: {}).
	type := ((self bucket 
				argumentsFor: SHClassA>>#assoc:collection:dict:number:) at: 3) anyOne.
	self assert: type = (self container: Dictionary 
									elements: {SmallInteger} 
									keys: {self byteSymbol}).
	type := ((self bucket 
				argumentsFor: SHClassA>>#assoc:collection:dict:number:) at: 4) anyOne.
	self assert: type = SmallInteger.	