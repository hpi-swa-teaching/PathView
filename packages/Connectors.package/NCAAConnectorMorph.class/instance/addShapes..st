labeling
addShapes: anArray
	constraints with: anArray do: [ :end :shape | end addShape: shape; step ].