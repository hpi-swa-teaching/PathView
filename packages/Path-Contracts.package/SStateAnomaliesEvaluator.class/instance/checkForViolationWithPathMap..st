evaluation
checkForViolationWithPathMap: aMutation
	| violations |
	[self faultLocalizationFlap switchExpandState.
	self runAllTestsWithContracts.
	violations := self pathMap model pathMap violations.
	self current add: violations.
	violations ifNotEmpty: [
		1 halt.
		Transcript 
			show: 'Mutation leads to ', violations keys size, ' violations!.'; 
			cr]] ensure: [self faultLocalizationFlap switchExpandState].