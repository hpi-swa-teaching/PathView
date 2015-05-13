testing
test04RunAllTestsWithStatementCoverage
	<timeout: 10>
	| morph |
	self options statementCoverage.
	self 
		assert: (self options getLabelString: 0.1@0.1) =  '0% covered statements.';
		assert: (self options getLabelString: 0.9@0.9) =   '86% covered statements.'.
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	self 
		assert: morph color =  Color black;
		assert: morph additionalInfo =  'SSBClassA initialize
100% of statements covered.
'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #complexMethod:).
	self 
		assert: morph color = (Color r: 0.197 g: 0.197 b: 0.197);
		assert: morph additionalInfo =  'SSBClassA complexMethod:
73% of statements covered.
'.