geometry
reduceVertices
	| oldVerts |
	(oldVerts := line vertices size) > 2 ifTrue: [ 
		(line reduceVertices ~= oldVerts) ifTrue: [ constraints do: [ :ea | ea step ] ]
	].
