actions
openMethod: association
	"class -> selector"
	
	^ (self methodMorphFor: association)
		ifNotNilDo: [ :morph | | method |
			method := morph openMethodMorph.
			self owner addMorph: 
				(method
					position: self position;
					yourself).
			method ].