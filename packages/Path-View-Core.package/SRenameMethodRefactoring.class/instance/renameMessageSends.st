transforming
renameMessageSends

	senders = #all
		ifTrue: [self convertAllReferencesTo: oldSelector using: self parseTreeRewriter].
		
	senders = #class
		ifTrue: [self convertReferencesTo: oldSelector inClass: class using: self parseTreeRewriter].    
		
	senders = #package
		ifTrue: [self convertReferencesTo: oldSelector inPackage: class category using: self parseTreeRewriter]. 
		
	senders = #none
		ifTrue: [^self].