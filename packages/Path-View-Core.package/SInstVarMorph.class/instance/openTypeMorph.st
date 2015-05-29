event handling
openTypeMorph
	
	self getClass ifNotNilDo: [ :cl |
		(SClassMorph on: cl) ifNotNilDo: [ :newClassMorph |
			self
				openInstVarAssociationTo: newClassMorph;
				openNewClassMorph: newClassMorph ] ].