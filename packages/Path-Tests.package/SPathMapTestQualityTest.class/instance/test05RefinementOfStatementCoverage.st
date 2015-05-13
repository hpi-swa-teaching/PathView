testing
test05RefinementOfStatementCoverage
	<timeout: 10>
	| morph browser |
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #initialize).
	morph browse.
	browser := self findBrowserFor: #SSBClassA -> #initialize.
	self assert: (browser model codePane text runs 
		select: [:each | each includes: TextEmphasis underlined]) size = 10.
	browser abandon.