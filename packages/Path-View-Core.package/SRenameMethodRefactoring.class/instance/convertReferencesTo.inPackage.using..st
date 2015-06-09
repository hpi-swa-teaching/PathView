support
convertReferencesTo: aSymbol inPackage: aSystemCategory using: searchReplacer

	(SystemNavigation default allCallsOn: aSymbol localToPackage: aSystemCategory)
		do: [ :method |
				self convertMethod: method selector
					 for: (self model classFor: (Smalltalk at: (method classSymbol)))
					 using: searchReplacer]