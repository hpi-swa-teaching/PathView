testing
test04JaccardMetricWithSelectedTest
	<timeout: 10>
	| highscore morph |
	self options setFormula: #jaccard.
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.
	morph := self methodMorph: (MethodReference class: SSBFaultLocalizationExample selector: #midX:Y:Z:).
	self 
		assert: morph color = (Color r: 0.333 g: 1.0 b: 0.0);
		assert: morph additionalInfo = 'SSBFaultLocalizationExample midX:Y:Z:
5 out of 5 passed tests
1 out of 1 failed tests
Suspiciousness value: 16%
Single point of failure probability: 16%
'.	
	highscore := self options showHighscore.
	self 
		assert: highscore notNil;
		assert: highscore rootObject size = 4;
		assert: highscore rootObject first value first < 0.17;
		assert: highscore rootObject first value second > 0.99.		
	highscore dependents first abandon.