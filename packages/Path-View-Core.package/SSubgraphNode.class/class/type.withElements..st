instance creation
type: aGraphClass withElements: aCollectionOfElements
	"Instance creation is allowed from collections of SGraphElements, or of objects, that are converted to SGraphElements."
	
	^ self new
		graph: (
			aGraphClass new
				addElements: (aCollectionOfElements collect: [ :element | SGraphElement buildFrom: element ]);
				yourself);
		yourself