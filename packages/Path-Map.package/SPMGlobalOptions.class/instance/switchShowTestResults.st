spec commands
switchShowTestResults
	self showTestResults: self showTestResults not.
	self changed: #showTestResults.