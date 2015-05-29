layout force-based
moveNodes
	
	classMorphs do: [ :morph |
		(morph owner = self) ifTrue: [ "Don't move nodes, that are grabbed by the hand."
			morph moveInside: self bounds ] ].