building
reset

	self color: Color white.
	self lineMorph ifNotNil: [
		self removeMorph: self lineMorph.
		self lineMorph abandon].
	self childrenMorphs valuesDo: [:each | each abandon].
	self childrenMorphs: nil.
	Smalltalk garbageCollect. "Many objects are ready to be removed"