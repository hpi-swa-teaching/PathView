reengineering
inlineParameter
	| arguments |
	arguments := (RBParser new
						initializeParserWith: ((klass >> methodName) getSource);
						parseMessagePattern) argumentNames.
	SRefactoring execute: (InlineParameterRefactoring
								removeParameter: (UIManager default 
										chooseFrom: arguments values: arguments)
								in: klass
								selector: methodName asSymbol)