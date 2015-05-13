accessing
getAllCoveredMethods
	| result |
	result := Dictionary new.
	self testResults valuesDo: [:each | result := result, each].
	^ result