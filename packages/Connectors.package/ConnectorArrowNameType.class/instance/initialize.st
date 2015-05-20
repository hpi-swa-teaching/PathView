initialization
initialize
	"Initialize the ArrowNames vocabulary"

	super initialize.
	self vocabularyName: #ArrowNames.
	NCAAConnectorMorph arrowDictionary addDependent: self.
