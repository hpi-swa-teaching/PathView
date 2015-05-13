actions
close
	self targetMorph expandMorph: nil.
	self childrenMorphs valuesDo: [:each | each parentMorph: self targetMorph].
	self abandon.