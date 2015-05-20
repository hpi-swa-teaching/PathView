accessing
setAsDefaultScale
	"Call my current scale the default"

	originalFirstContour := originalFirstContour 
				collect: [:ea | ea * scale ].
	super setAsDefaultScale.