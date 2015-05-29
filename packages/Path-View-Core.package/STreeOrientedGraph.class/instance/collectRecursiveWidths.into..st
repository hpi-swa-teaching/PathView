layout
collectRecursiveWidths: aNode into: widthDictionary
	"Sum up the width of each node depth-first. The width is the total width of all children"
	
	(self childrenOf: aNode)
		ifEmpty: [ widthDictionary at: aNode put: aNode width ]
		ifNotEmptyDo: [ :children |
			children do: [ :child | self collectRecursiveWidths: child into: widthDictionary ].
			widthDictionary
				at: aNode
				put: 
					((children inject: 0 into: [ :total :element | total + self class minimumSpacing + (widthDictionary at: element) ] )
					max: aNode width) ].