projects
projectAt: aSymbol

	^ self projectRegistry
		at: aSymbol ifAbsent: [nil]