properties
propertyClassOf: anObject
	(anObject class includesBehavior: Number)
		ifTrue:[^ SNumbersRangeProperties].
	(anObject class includesBehavior: Character)
		ifTrue:[^ SCharactersRangeProperties].
	(anObject class includesBehavior: String)
		ifTrue:[^ SStringRangeProperties].
	(anObject class includesBehavior: Collection)
		ifTrue:[^ SCollectionsRangeProperties].	
	(anObject class includesBehavior: DateAndTime)
		ifTrue:[^ SDateAndTimeRangeProperties].
	(anObject class includesBehavior: Duration)
		ifTrue:[^ SDurationRangeProperties].
	(anObject class includesBehavior: Stream)
		ifTrue:[^ SStreamRangeProperties].		
	"..."
	^ SDefaultRangeProperties