testing
test08aAuthorMetricLastChangePure
	<timeout: 10>
	| options morph |
	options := self getOptionWithAuthorMetric: #authorLastChange.
	self 
		assert: (options getLabelString: 0.1@0.1) = 'Method not covered.
Last change by Unknown.';
		assert: (options getLabelString: 0.9@0.9) = 'Method covered.
Last change by mp.'.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #symbolFor:).
