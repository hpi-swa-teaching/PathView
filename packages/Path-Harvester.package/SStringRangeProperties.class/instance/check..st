processing
check: aSymbol
	([self lastObject perform: aSymbol] on: Error do: [nil])
		ifNotNil: [self contentTypes add: aSymbol].