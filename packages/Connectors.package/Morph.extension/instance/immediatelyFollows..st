*connectors-graphs
immediatelyFollows: aMorph
	^self incomingConnections anySatisfy: [ :conn | conn startConnection  == aMorph ]