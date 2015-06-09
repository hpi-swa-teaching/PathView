dropping/grabbing
wantsToBeDroppedInto: aMorph
	"Avoids diagram-elements to be dropped outside the diagram."
	
	^ (aMorph isKindOf: SClassDiagram) | (aMorph isKindOf: SClassMorph)