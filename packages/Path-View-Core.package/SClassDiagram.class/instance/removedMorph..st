submorphs-add/remove
removedMorph: aMorph
	"aMorph has just been removed from me, stop observation"
	
	super removedMorph: aMorph.
	aMorph isClassMorph ifTrue: [ classMorphs remove: aMorph ifAbsent: [] ].
	aMorph removeDependent: self.
	self
		contentChangedBecauseOf: aMorph;
		changed: #morphRemoved