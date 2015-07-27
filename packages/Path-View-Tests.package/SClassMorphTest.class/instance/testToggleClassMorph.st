as yet unclassified
testToggleClassMorph
	| firstState |
	firstState := instance showLabel.
	instance toggleClassMorph.
	self assert: [firstState not = instance showLabel]