*connectors-graphs
immediatelyPrecedes: aMorph
	^self outgoingConnections anySatisfy: [ :conn | conn endConnection  == aMorph ]