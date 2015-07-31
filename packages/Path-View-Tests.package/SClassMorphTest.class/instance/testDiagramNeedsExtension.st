as yet unclassified
testDiagramNeedsExtension

	| diagram instanceStateMorph |

	"set up"
	diagram := SClassDiagram new.
	diagram openInWorld.

	instance implementationMorph instanceStateMorph collapseMorphs.
	instance fullBounds.
	instance position: (diagram boundsInWorld bottomLeft - (0@(instance height))).	
	diagram addMorph: instance.
	
	instanceStateMorph := instance implementationMorph instanceStateMorph.
	instanceStateMorph 
		expandMorphs.

	self 
		assert: [ diagram diagramNeedsExtensionFor: instance ] 
		description: 'morph should extend the diagram'.
	
	"clean up"
	diagram owner removeMorph: diagram

	