*connectors-attachment points
attachmentPoints
	^ self attachmentPointSpecs
		collect: [:ea |
			(self perform: ea first withArguments: ea allButFirst) asIntegerPoint ]