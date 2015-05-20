*cgprereqs-structure
graphContextOrNil
	"Answer a NCGraphModel to hold graph model items at my level, or nil.
	By default, this is held in the closest PasteUpMorph."
	^self valueOfProperty: #graphContext.