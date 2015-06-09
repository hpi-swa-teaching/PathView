toolbar
openAssociations
	"Automatically opens direct associations.
	No layouting is done, the new morphs are simply placed below the old one."
	
	self currentTypeBucket ifNotNilDo: [ :typeBucket | | classMorphs |
		classMorphs := OrderedCollection new.
		klass allInstVarNames withIndexDo: [:name :idx | | class |
			class := (typeBucket membersFor: klass) at: idx ifAbsent: nil.
			class ifNotNil: [
				classMorphs addLast: (self pasteUpMorphOrWorld
					openClassMorphFor: class
					nextTo: self
					positionedBy: [ :newMorph | 
						newMorph topLeft: (self right  + (self class classMorphPadding * 3)) @
								(classMorphs
									ifEmpty: [self top]
									ifNotEmpty: [classMorphs last bottom + self class classMorphPadding]) ] ) ] ].
		self openAssociationConnectionsWithAll: classMorphs ].