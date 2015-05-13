testing
test03TestRunnerButtons
	| button | 
	button := self findButtonLabeled: 'Run Selected'.
	self 
		assert: button notNil;
		assert: button enabled.
	{'Run with Contracts'. 'Run Failures'. 'Run Errors'} do: [:each | 
		button := self findButtonLabeled: each.
		self 
			assert: button notNil;
			deny: button enabled].