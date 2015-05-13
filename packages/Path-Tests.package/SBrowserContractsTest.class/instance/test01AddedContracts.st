testing
test01AddedContracts

	self assert: (SVisibleClock>>#initInFrame:) class = SContractWrapper.
	self assert: SVisibleClock organization invariantMethod notNil.