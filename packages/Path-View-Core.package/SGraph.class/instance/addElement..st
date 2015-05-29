accessing
addElement: nodeOrEdge
	
	(nodeOrEdge isKindOf: SAbstractGraphEdge) ifTrue: [ edges add: nodeOrEdge ].
	(nodeOrEdge isKindOf: SGraphNode) ifTrue: [ nodes add: nodeOrEdge ].
	"Ignore other objects..."