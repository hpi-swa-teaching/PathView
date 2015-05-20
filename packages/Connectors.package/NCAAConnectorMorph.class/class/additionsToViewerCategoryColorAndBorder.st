scripting
additionsToViewerCategoryColorAndBorder
	"Answer viewer additions for the 'color & border' category"

	^#(
		#'color & border' 
		(
			(slot lineWidth 'The width of the main part of the Connector' Number readWrite Player getLineWidth Player setLineWidth:)
		)
	)
