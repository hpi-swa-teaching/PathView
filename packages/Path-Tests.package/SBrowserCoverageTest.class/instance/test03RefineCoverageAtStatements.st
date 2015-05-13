testing
test03RefineCoverageAtStatements
	<timeout: 20>
	"test fails with coverage analysis because of context simulation"
	self assert: (self browser codePane text runs 
		select: [:each | each includes: TextEmphasis underlined]) size = 0.
	self browser 
		setClass: SAnalogClock selector: #draw;
		statementCoverage.
	self assert: (self browser codePane text runs 
		select: [:each | each includes: TextEmphasis underlined]) size > 200.