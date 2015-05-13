support
convertReferencesTo: aSymbol inClass: aClass using: searchReplacer

	(SystemNavigation default allCallsOn: aSymbol localTo: aClass)
		do: [ :method |
				self convertMethod: method selector
					 for: (self model classFor: (Smalltalk at: (method classSymbol)))
					 using: searchReplacer]