as yet unclassified
testToggleClassMorph
	| firstState |
	firstState := instance labelHidden.
	instance toggleClassMorph.
	self assert: [firstState not = instance labelHidden]