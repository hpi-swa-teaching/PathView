accessing
getAllCoveredMethodsFromFailedTests
	| result failed |
	result := Dictionary new.
	failed := self testResults associationsSelect: [:each | 
					each key lastResult hasPassed not].
	failed valuesDo: [:each | result := result, each].
	^ result