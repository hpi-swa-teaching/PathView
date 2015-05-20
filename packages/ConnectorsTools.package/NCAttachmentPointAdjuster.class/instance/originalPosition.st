initialization
originalPosition
	^target localPointToGlobal: (target perform: originalSpec first withArguments: (originalSpec allButFirst) asArray).
