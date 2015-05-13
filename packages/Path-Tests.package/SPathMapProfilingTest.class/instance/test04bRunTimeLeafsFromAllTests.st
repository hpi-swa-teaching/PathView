testing
test04bRunTimeLeafsFromAllTests
	<timeout: 30>
	| morph highscore |
	self options 
		setKindOfProfiling: #runtime;
		switchLeafProfilingRuntime.
	self assert: self options leafProfiling.
	self runAllTests.
	self 
		assert: (self options getLabelString: 0.0@0.1) =  '1 ns';
		assert: (self options getLabelString: 1.0@0.9) asInteger >  98000000.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #delayedMethod).
	self 
		assert: morph color red = 1.0;
		assert: (morph additionalInfo startsWith: 'SSBClassA delayedMethod
required ');
		assert: morph additionalInfo asInteger > 98.
	highscore := self options showHighscore.
	self 
		assert: highscore notNil;
		assert: highscore rootObject size = 94;
		assert: highscore rootObject first key nanoSeconds > 98000000.
	highscore dependents first abandon.