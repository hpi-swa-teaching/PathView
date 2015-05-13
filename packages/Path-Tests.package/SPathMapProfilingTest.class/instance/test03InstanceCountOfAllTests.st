testing
test03InstanceCountOfAllTests
	<timeout: 20>
	|  morph highscore |
	self options setKindOfProfiling: #numberOfInstances.
	self runAllTests.
	self 
		assert: (self options getLabelString: 0.1@0.1) = '2 instances';
		assert: (self options getLabelString: 0.9@0.9) = '19 instances'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self deny: morph visible.
	morph := self classMorph: SSBClassA.
	self 
		assert: morph color = (Color r: 1.0 g: 0.151 b: 0.0);
		assert: morph additionalInfo = 'SSBClassA
23 objects were created.
'.
	highscore := self options showHighscore.
	self 
		assert: highscore notNil;
		assert: highscore rootObject size = 11;
		assert: highscore rootObject first = 
					(26 -> (MethodReference class: SSBClassD class selector: #basicNew)).
	highscore dependents first abandon.