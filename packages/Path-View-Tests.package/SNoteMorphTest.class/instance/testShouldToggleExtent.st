as yet unclassified
testShouldToggleExtent
	
	"test fails if collapsed texfield height is smaller than 28, because autoFit is enabled"
	| beforeToggleExtent afterToggleExtent afterSecondToggleExtent |
	
	beforeToggleExtent := instance textMorph extent.
	instance toggleNote.
	afterToggleExtent := instance textMorph extent.
	instance toggleNote.
	afterSecondToggleExtent := instance textMorph extent.

	self assert: [afterToggleExtent = instance collapsedExtent] description: 'collapsing failed'.
	self assert: [afterSecondToggleExtent = beforeToggleExtent] description: 'expanding failed'