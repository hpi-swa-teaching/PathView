reengineering
removeParameter
	| arguments |
	arguments := (RBParser new
						initializeParserWith: ((klass >> methodName) getSource);
						parseMessagePattern) argumentNames.
	
	SRefactoring execute: (RemoveParameterRefactoring
								removeParameter: (UIManager default 
														chooseFrom: arguments values: arguments)
								in: klass
								selector: methodName asSymbol).