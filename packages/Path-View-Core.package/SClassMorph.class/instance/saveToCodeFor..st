loading/saving
saveToCodeFor: aDiagramParameterName
	| code storedProperties compilationClass type morphClass |
	storedProperties := (SStoreVisitor store: self)
							ifNil: [self error]
							ifNotNilDo: [:s | s storeString].
	klass isBehavior
		ifTrue: [compilationClass := klass theMetaClass.
				morphClass := SClassMorph]
		ifFalse: [compilationClass := klass typeOfContainer.
				morphClass := SContainerClassMorph].
	type := klass storeString.
	code := self class saveToCodeTemplate
				format: {aDiagramParameterName. morphClass. type. storedProperties}.
	^ code