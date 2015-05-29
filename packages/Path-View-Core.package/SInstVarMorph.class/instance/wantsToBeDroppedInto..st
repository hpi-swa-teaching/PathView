event handling
wantsToBeDroppedInto: aMorph
	"Variables can be dropped into classes, that are either super- or sub-classes of the original class."
	
	^ aMorph isClassDiagramMorph
		and: [ | targetClass |
			targetClass := aMorph classMorph visualizedClass.
			(targetClass allSuperclasses includes: self visualizedClass)
			or: [ self visualizedClass allSuperclasses includes: targetClass ] ]