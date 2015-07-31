as yet unclassified
testHasDiagramParent

	| diagram |

	diagram := SClassDiagram new.
	diagram addMorph: instance.
	
	self assert: [ instance hasDiagramParent ] description: 'the class morph should be on a diagram'



