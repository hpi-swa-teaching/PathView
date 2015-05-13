accessing
from: aGraphNode to: anotherGraphNode
	
	fromNode := aGraphNode.
	toNode := anotherGraphNode.
	aGraphNode addEdge: self.
	anotherGraphNode addEdge: self.