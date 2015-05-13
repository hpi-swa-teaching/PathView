testing
test06aAuthorMetricMethodCreatorPure
	<timeout: 10>
	| options morph |
	options := self getOptionWithAuthorMetric: #authorFirstChange.
	self 
		assert: (options getLabelString: 0.1@0.1) = 'Method not covered.
Last change by Unknown.';
		assert: (options getLabelString: 0.9@0.9) = 'Method covered.
Last change by mp.'.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #symbolFor:).
	self 
		assert: morph color = (Color r: 0.65 g: 1.0 b: 1.0);
		assert: morph additionalInfo = 'SSBDictionary symbolFor:
Author: Unknown
'.
	morph := self methodMorph: (MethodReference class: SSBDictionary selector: #myValue:).
	self 
		assert: morph color = (Color r: 1.0 g: 0.65 b: 0.65);
		assert: morph additionalInfo = 'SSBDictionary myValue:
Author: mp
'.