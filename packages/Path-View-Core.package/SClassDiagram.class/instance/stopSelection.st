event handling
stopSelection
	"The selectionMorph will be used again for the next selection.
	We try to avoid errors with the selection by reducing the number of instances to one."
	
	selectionMorph ifNotNil: [selectionMorph delete].