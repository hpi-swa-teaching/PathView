event handling
openTypeMorph
	
	self ensureAndGetClass ifNotNilDo: [ :class |
		(SClassMorph on: class) ifNotNilDo: [ :newClassMorph |
			self
				openInstVarAssociationTo: newClassMorph;
				openNewClassMorph: newClassMorph ] ].