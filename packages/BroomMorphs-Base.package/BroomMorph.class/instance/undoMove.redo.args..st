undo
undoMove: cmd redo: redo args: args
	"morph oldbounds newbounds oldowner oldpredecessor"
	cmd redoTarget: self selector: #undoMove:redo:args: arguments: { cmd. true. args }.
	args do: [ :a | | morph oldbounds newbounds oldowner oldpredecessor |
		morph := a at: 1.
		oldbounds := a at: 2.
		newbounds := a at: 3.
		oldowner := a at: 4.
		oldpredecessor := a at: 5.
		oldowner ifNotNil: [ oldpredecessor ifNil: [ oldowner addMorphFront: morph ]
			ifNotNil: [ oldowner addMorph: morph after: oldpredecessor ]].
		morph bounds: (redo ifTrue: [ newbounds ] ifFalse: [ oldbounds ]).
		(morph isKindOf: SystemWindow) ifTrue: [ morph activate ].
	].