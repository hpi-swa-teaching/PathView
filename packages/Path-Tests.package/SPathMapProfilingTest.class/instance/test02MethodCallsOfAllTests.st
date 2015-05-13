testing
test02MethodCallsOfAllTests
	<timeout: 20>
	|  morph highscore |
	self options setKindOfProfiling: #numberOfMethodCalls.
	self runAllTests.
	self 
		assert: (self options getLabelString: 0.1@0.1) = '2 method calls';
		assert: (self options getLabelString: 0.9@0.9) = '29 method calls'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self 
		assert: morph color = (Color r: 1.0 g: 0.644 b: 0.0);
		assert: morph additionalInfo = 'SSBClassA initialize
was called 23 times.
'.
	highscore := self options showHighscore.
	self 
		assert: highscore notNil;
		assert: highscore rootObject size = 94;
		assert: highscore rootObject first = 
					(42 -> (MethodReference class: SSBTest selector: #a)).
	highscore dependents first abandon.