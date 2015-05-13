testing
test10aLastChangeMetricPure
	<timeout: 10>
	| morph |
	self options staticMetricLastChanges.
	self 
		assert: (self options getLabelString: 0.0@0.1) =  'Method not covered.
8 March 2010 last change.';
		assert: (self options getLabelString: 1.0@0.9) = ('Method covered.
', Date today asString, ' last change.').
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #myValue:).
	self assert: morph additionalInfo =  'SSBDictionary myValue:
last change: 5 January 2012 11:55:12 am.
'.