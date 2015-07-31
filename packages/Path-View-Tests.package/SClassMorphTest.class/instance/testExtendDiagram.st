as yet unclassified
testExtendDiagram

	| diagram oldHeight instanceStateMorph |

	"set up"
	diagram := SClassDiagram new.
	diagram openInWorld.

	instance implementationMorph instanceStateMorph collapseMorphs.
	instance fullBounds.
	instance position: (diagram boundsInWorld bottomLeft - (0@(instance height))).	
	diagram addMorph: instance.

	oldHeight := diagram boundsInWorld height.
	instanceStateMorph := instance implementationMorph instanceStateMorph.
	instanceStateMorph 
		expandMorphs;
		updateExpansion.

	self 
		assert: [  diagram fullBoundsInWorld height > oldHeight ] 
		description: 'diagram width should grow after expansion'.
	
	"clean up"
	diagram owner removeMorph: diagram