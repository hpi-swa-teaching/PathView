traversal
bfsStartingAt: root nodeBlock: nodeBlock edgeBlock: edgeBlock dist: distance pred: pred states: stateDict
	| states q |
	states := stateDict ifNil: [ IdentityDictionary new: self vertices size ].	"#unexplored #processed #frontier"
	q := OrderedCollection new.
	states at: root put: #frontier.
	distance ifNotNil: [distance at: root put: 0].
	pred ifNotNil: [pred at: root put: root].
	q addLast: root.
	[q isEmpty] whileFalse: 
			[| u successors |
			u := q removeFirst.
			nodeBlock ifNotNil: [nodeBlock value: u].
			successors := IdentitySet new.
			(self validOutgoingConnectionsFor: u) do: 
					[:conn | 
					| dm |
					dm := conn destinationMorph.
					dm ifNotNil: 
							[successors add: dm.
							edgeBlock ifNotNil: [edgeBlock value: conn]]].
			successors do: 
					[:v | 
					(states at: v ifAbsentPut: [#unexplored]) == #unexplored 
						ifTrue: 
							[states at: v put: #frontier.
							distance ifNotNil: [distance at: v put: (distance at: u) + 1].
							pred ifNotNil: [pred at: v put: u].
							q addLast: v]].
			states at: u put: #processed]