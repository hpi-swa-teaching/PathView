*connectors-attachment points
allAttachmentPoints
	^ self allAttachmentPointSpecs
		collect: [:ea |
			(self perform: ea first withArguments: ea allButFirst) asIntegerPoint ]