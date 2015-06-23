resizing
diagramNeedsExtensionFor: aMorph

	| mergedArea |
	mergedArea := (self boundsInWorld merge: aMorph boundsInWorld) area.		
	^ mergedArea >  self boundsInWorld area
