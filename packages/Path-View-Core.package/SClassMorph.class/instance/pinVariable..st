actions
pinVariable: association
	"class -> symbol (name of variable, class to support instance- and class-side variables)"
	
	(self variableMorphFor: association) ifNotNilDo: #pin.