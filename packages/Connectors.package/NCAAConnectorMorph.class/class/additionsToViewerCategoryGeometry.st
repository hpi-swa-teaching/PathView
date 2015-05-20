scripting
additionsToViewerCategoryGeometry
	"Answer viewer additions for the 'geometry' category"
	"Vocabulary initialize"

	^#(

		geometry 
		(
			(slot totalLength  'My total length' Number readOnly Player getTotalLength unused unused)
			(slot midpointX  'The X coordinate of my midpoint' Number readOnly Player getMidpointX unused unused)
			(slot midpointY  'The Y coordinate of my midpoint' Number readOnly Player getMidpointY unused unused)
			(slot sourceX  'The X coordinate of my first end' Number readOnly Player getSourceX unused unused)
			(slot sourceY  'The Y coordinate of my first end' Number readOnly Player getSourceY unused unused)
			(slot destinationX  'The X coordinate of my second end' Number readOnly Player getDestinationX unused unused)
			(slot destinationY  'The Y coordinate of my second end' Number readOnly Player getDestinationY unused unused)
		)
	

	)
