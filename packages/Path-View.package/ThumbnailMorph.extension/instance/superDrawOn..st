*Path-View
superDrawOn: aCanvas
	"Needed by SSmoothableThumbnailMorph to override drawMeOn:, which required the super-drawOn: method.
	Workaround to get the smoothing: parameter adjustable when drawing the thumbnail."
	
	super drawOn: aCanvas.