refreshing
refresh: aBlock fromNode: aMorph
	aMorph withSiblingsDo: [:sib | 
		aBlock value: sib.
		sib firstChild ifNotNil: [self refresh: aBlock fromNode: sib firstChild]].