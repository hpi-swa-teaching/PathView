inconsistencies
markInconsistencies: aMorph

	self indicateMissingAssociationClasses: aMorph.
	self indicateMissingSourceCode: aMorph.
	self indicateInheritanceConflict: aMorph.