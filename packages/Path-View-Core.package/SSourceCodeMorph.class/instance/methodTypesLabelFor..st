event handling
methodTypesLabelFor: aWord
	"Method copied from SBrowser, with slight changes. Need refactoring, see implementors."
	
	| method temps index type |
	self flag: #ag. self flag: #mpe.
	(SProject current allClasses includes: self klass instanceSide)
		ifTrue: [
			method := self klass >> self selector.
			temps := method methodNode arguments, method methodNode temporaries.
			temps ifNotEmpty: [
				temps := temps collect: [:each | each name].
				index := temps indexOf: aWord.
				index = 0
					ifFalse: [SProject current typesBucket 
								ifNil: [^ 'Run type harvester first'].
						type := ((SProject current typesBucket argumentsFor: method) 
									at: index ifAbsent: nil).
						type 
							ifNil: [^ 'No type available']
							ifNotNil: [^ type asString]]].
			(self selector asString beginsWith: aWord)
				ifTrue: [SProject current typesBucket 
							ifNil: [^ 'Run type harvester first'].
					type := (SProject current typesBucket 	returnFor: method).
					type 
						ifNil: [^ '^ No type available']
						ifNotNil: [^ '^ ', type asString]]].
	^ ''