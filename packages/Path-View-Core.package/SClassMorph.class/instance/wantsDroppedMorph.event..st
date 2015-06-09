dropping/grabbing
wantsDroppedMorph: aMorph event: anEvent

	^ 
	((aMorph isKindOf: SClassDiagramMorph) 
		and: [ aMorph isClassMorph not ] "Reengineering is taking place."
		and: [ aMorph wantsReengineeringInto: self ])
	or:
	((aMorph isKindOf: SFloatingCodeSnippet) and: [ aMorph wantsReengineeringInto: self ])
	or:
	((aMorph isKindOf: SClassMorph)
		and: [
			self klass = aMorph klass
			or: [ self klass = aMorph visualizedClass ] "Allow dropping container-types into the according regular types, but not vice-versa!"
			or: [ self isSuperClassOf: aMorph ] ])