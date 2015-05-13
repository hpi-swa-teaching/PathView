types harvester
instVarTypeLabelFor: aWord
	| index type |
	index := self selectedClassOrMetaClass allInstVarNames indexOf: aWord.
	index = 0
		ifFalse: [
			SProject current typesBucket ifNil: [^ 'Run type harvester first'].
			type := ((SProject current typesBucket 
						membersFor: self selectedClassOrMetaClass) at: index ifAbsent: nil).
			type 
				ifNil: [^ 'No type available']
				ifNotNil: [^ type asString]].
	^ ''