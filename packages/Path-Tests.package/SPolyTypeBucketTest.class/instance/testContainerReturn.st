testing-container
testContainerReturn
	| type |
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOver.
	type := (self bucket returnFor: SHClassA>>#assoc:collection:dict:number:) anyOne.
	self
		deny: type isBehavior;
		assert: type class = SContainerType;
		assert: type typeOfContainer = Array;
		assert: type typeOfElements = (Set 
											with: (self container: OrderedCollection 
													     elements: {SmallInteger. 
																    self byteString} 
													     keys: {})
											with: SmallInteger
											with: (self container: Dictionary 
													     elements: {SmallInteger} 
													     keys: {self byteSymbol})
											with: (self container: Association 
													     elements: {SmallInteger} 
													     keys: {self byteSymbol}));
		assert: type typeOfKeys isEmpty.									