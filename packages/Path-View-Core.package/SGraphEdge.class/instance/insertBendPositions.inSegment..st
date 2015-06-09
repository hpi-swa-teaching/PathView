calculations
insertBendPositions: collectionOfPoints inSegment: aNumber
	
	| resort |
	resort := false.
	collectionOfPoints do: [ :point |
		(bendPositions includes: point)
			ifFalse: [
				bendPositions add: point.
				resort := true ] ].
	
	"This is not nice, but depending on whether there is a code-box involved, we have to sort the bend-positions differently...
	Results from unexpected behavior in the Connectors library."
	resort ifTrue: [
		self sortBendPositionsStarting: 
			((self toNode isKindOf: STextGraphNode)
				ifTrue: [ self toNode absoluteBounds ]
				ifFalse: [ self fromNode absoluteBounds ]) ].