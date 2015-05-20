geometry
extent: aPoint
	self extent = aPoint ifTrue: [ ^self ].
	super extent: aPoint.
	self lineMorphs do: [ :l | | v newV |
		l visible ifTrue: [
			v := l vertices.
			newV := { self innerBounds left @ v first y. self innerBounds right @ v first y }.
			newV = v ifFalse: [  l setVertices: newV ]]].
