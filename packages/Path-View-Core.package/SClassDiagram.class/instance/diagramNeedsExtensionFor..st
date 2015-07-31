resizing
diagramNeedsExtensionFor: aMorph
	"check if the changed morph is outside the diagram bounds"
	| mergedArea |

	aMorph fullBounds. "force layout recalculation because bounds are lazy init"
	mergedArea := (self boundsInWorld merge: aMorph boundsInWorld) area.		
	^ mergedArea >  self boundsInWorld area
