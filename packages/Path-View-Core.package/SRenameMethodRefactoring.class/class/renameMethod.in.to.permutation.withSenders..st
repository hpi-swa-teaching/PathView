instance creation
renameMethod: aSelector in: aClass to: newSelector permutation: aMap withSenders: aSymbol

	^self new 
		senders: aSymbol;
		renameMethod: aSelector
		in: aClass
		to: newSelector
		permutation: aMap