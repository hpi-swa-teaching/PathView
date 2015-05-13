types harvester
methodTypesLabelFor: aWord
	| method temps index type |
	(SProject current allClasses includes: self selectedClassOrMetaClass instanceSide)
		ifTrue: [
			method := self selectedClassOrMetaClass >> self selectedMessageName.
			temps := method methodNode arguments.
			temps ifNotEmpty: [
				temps := temps collect: [:each | each name].
				index := temps indexOf: aWord.
				index = 0
					ifFalse: [SProject current typesBucket 
								ifNil: [^ 'Run type harvester first'].
						type := ((SProject current typesBucket 
									argumentsFor: method) at: index).
						type 
							ifNil: [^ 'No type available']
							ifNotNil: [^ type asString]]].
			(self selectedMessageName asString beginsWith: aWord)
				ifTrue: [SProject current typesBucket 
							ifNil: [^ 'Run type harvester first'].
					type := (SProject current typesBucket 
								returnFor: method).
					type 
						ifNil: [^ '^ No type available']
						ifNotNil: [^ '^ ', type asString]]].
	^ ''