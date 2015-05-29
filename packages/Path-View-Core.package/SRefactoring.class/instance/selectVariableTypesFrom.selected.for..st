refactoring options
selectVariableTypesFrom: aCollectionOfTypes selected: aSelectedCollection for: aRefactoring
	| stream result |
	stream := WriteStream on: String new.
	aCollectionOfTypes
		do: [ :each | stream nextPutAll: each name ]
		separatedBy: [ stream cr ].
	result := UIManager default
			multiLineRequest: 'Select classes to move to:'
			centerAt: Sensor cursorPoint
			initialAnswer: stream contents
			answerHeight: 200.
	result isNil
		ifTrue: [ ^ self uiCancellationError ].
	^ (result findTokens: String crlf)
		collect: [ :each | aRefactoring model classFor: (Smalltalk classNamed: each withBlanksTrimmed) ]
		