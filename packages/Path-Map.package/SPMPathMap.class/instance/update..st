updating
update: what
	(what isKindOf: AbstractEvent)
		ifTrue: [self updateMapIfNecessary: what].
	((what == #categorySelected) and: [self project isNil])
		ifTrue: [	self newProjectSelected: SProject current.
				self rebuildPathMap].