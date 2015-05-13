accessing
instanceVariableTypes
	
	^ self currentTypeBucket
		ifNil: [#()]
		ifNotNilDo: [:typeBucket | | classes |
			classes := OrderedCollection new.
			klass allInstVarNames withIndexDo: [:name :idx |
				((typeBucket membersFor: klass) at: idx)
					ifNotNilDo: [ :class | classes add: class]].
			classes]