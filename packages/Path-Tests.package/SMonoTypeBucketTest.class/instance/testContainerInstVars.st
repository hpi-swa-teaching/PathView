testing-container
testContainerInstVars
	self run: SHarvestingSandboxTest with: #testMethodWithContainersAllOver.
	self assert: ((self bucket membersFor: SHClassA) at: 2) = Object.