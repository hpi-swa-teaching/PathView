private
handleEvent: anEvent eventOrType: aSymbol 
	^anEvent isMorphicEvent 
		ifTrue: [self handleMorphicEvent: anEvent eventOrType: aSymbol]
		ifFalse: [self handleBasicEvent: anEvent eventOrType: aSymbol]