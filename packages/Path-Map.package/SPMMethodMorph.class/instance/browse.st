menu actions
browse
	| browser colors |
	browser := SBrowser fullOnClass: self parentSourceCodeEntityClass 
							selector: self sourceCodeEntity.
	colors := self pathMap collectAllColorsFromMethods.
	colors
		ifNotEmpty: [browser methodColors: colors].
	self pathMap selectedAnalysis == #testQuality
		ifTrue: [browser statementCoverage].
	self pathMap selectedAnalysis == #faultLocalization
		ifTrue: [browser faultLocalizationAtStatements: self pathMap tracer].