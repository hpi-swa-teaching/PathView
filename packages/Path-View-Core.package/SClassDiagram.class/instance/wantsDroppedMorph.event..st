events-processing
wantsDroppedMorph: aMorph event: anEvent
	
	^ 
	(aMorph isKindOf: SDebugRectangleMorph) or:
	[ aMorph isClassDiagramMorph ] or:
	[ aMorph isKindOf: SFloatingCodeSnippet ] or:
	[ SClassMorph canBeConverted: aMorph ]