*connectors-attachment points
createVerticalAttachmentPoints: n
	| incr |
	incr := 1.0 / n.
	self attachmentPointSpecs: (Array streamContents: [ :s | (0 to: 1.0 by: incr) do: [ :i | 
		s nextPut: {#pointAtOffset: . i @ 0 }.
				s nextPut: {#pointAtOffset: . i @ 1 } ]])