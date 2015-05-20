*connectors-attachment points
createHorizontalAttachmentPoints: n
	| incr |
	incr := 1.0 / n.
	self attachmentPointSpecs: (Array streamContents: [ :s | (0 to: 1.0 by: incr) do: [ :i | 
		s nextPut: {#pointAtOffset: . 0 @ i }.
				s nextPut: {#pointAtOffset: . 1 @ i } ]])