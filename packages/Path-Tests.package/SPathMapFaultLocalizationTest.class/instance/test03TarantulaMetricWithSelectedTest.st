testing
test03TarantulaMetricWithSelectedTest
	<timeout: 10>
	| highscore morph |
	self options setFormula: #tarantula.
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.
	morph := self methodMorph: (MethodReference class: SSBFaultLocalizationExample selector: #midX:Y:Z:).
	self 
		assert: morph color = Color yellow;
		assert: morph additionalInfo = 'SSBFaultLocalizationExample midX:Y:Z:
5 out of 5 passed tests
1 out of 1 failed tests
Suspiciousness value: 50%
Single point of failure probability: 50%
'.	
	highscore := self options showHighscore.
	self 
		assert: highscore notNil;
		assert: highscore rootObject size = 4;
		assert: highscore rootObject first value first <= 0.5;
		assert: highscore rootObject first value second > 0.99.		
	highscore dependents first abandon.