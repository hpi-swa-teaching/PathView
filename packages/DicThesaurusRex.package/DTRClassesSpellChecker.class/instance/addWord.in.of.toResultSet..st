adding
addWord: word in: selector of: class toResultSet: foundErrors 
	| lowercaseWord |
	lowercaseWord := word asLowercase.
	((foundErrors at: lowercaseWord ifAbsentPut: {0. OrderedCollection new}) at: 1 put: (foundErrors at: lowercaseWord) first + 1;
		 at: 2) add: {class. selector}