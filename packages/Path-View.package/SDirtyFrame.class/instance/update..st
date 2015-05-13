updating
update: action

	(#(isDirty) includes: action) ifTrue: [
		classDiagram isDirty ifTrue: [self show] ifFalse: [self hide]].
