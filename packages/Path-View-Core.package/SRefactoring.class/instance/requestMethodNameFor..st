refactoring options
requestMethodNameFor: aMethodName
	| string parser pattern |
	string := UIManager default  
		request: 'Method Name:'
		initialAnswer: aMethodName asString.
	parser := RBParser new.
	parser errorBlock: [ :error :position | ^ nil ].
	parser initializeParserWith: string.
	pattern := parser parseMessagePattern.
	^ RBMethodName
		selector: pattern selector
		arguments: pattern argumentNames