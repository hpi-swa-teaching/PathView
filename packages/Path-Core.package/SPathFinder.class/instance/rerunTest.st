actions
rerunTest
	| choice |
	self testChooserModel isTestAvailable
		ifTrue: [	choice := self chooseTestAction.
				choice caseOf: {
					[#rerun] -> [self testChooserModel analyzeTest].
					[#newTest] -> [self chooseNewTest]}
					otherwise: [^ self]]
		ifFalse: [self chooseNewTest].
	self changed: #label.

	