connection
insertVertexNextTo: constraint at: position
	"insert another vertex, before first or after last"
	constraint == constraints first
		ifTrue: [ line insertVertexBeforeStartAt: position ]
		ifFalse: [ line insertVertexAfterEndAt: position ].
	self changed.