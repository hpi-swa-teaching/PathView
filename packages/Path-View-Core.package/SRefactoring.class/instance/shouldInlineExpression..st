refactoring options
shouldInlineExpression: aString
	^ self confirm: 
		('Do you want to inline <1s>? If not, it will be assigned as a temporary.' expandMacrosWith: aString)