testing
test10bLastChangeMetricWithCoverage
	<timeout: 10>
	| morph |
	self runAllTests.
	self options staticMetricLastChanges.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #myValue:).
	self assert: morph additionalInfo =  'SSBDictionary myValue:
last change: 5 January 2012 11:55:12 am.
'.