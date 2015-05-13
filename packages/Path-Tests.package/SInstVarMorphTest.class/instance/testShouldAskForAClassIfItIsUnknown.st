get class tests
testShouldAskForAClassIfItIsUnknown
	<ignoreForTypeHarvesting>
	self
		mock: #prompt:labels:values:
		of: SMultipleChoiceRequest class
		toReturn: (Smalltalk at: #SPVTestClass) during: [
		self assert: [
			(testProject typesBucket membersFor: testClass) atAllPut: nil.
			[self assert: [instance getClass = testClass]]
				ensure: [(testProject typesBucket membersFor: testClass) atAllPut: testClass]]
			sends: #prompt:labels:values: to: SMultipleChoiceRequest class]