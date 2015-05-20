*connectors-attachment points
addHorizontalAttachmentPoints: n 
	| incr oldSpecs newSpec |
	n <= 0
		ifTrue: [^ self].
	incr := 1.0 / n.
	oldSpecs := self attachmentPointSpecs.
	self
		attachmentPointSpecs: (Array
				streamContents: [:s | 
					s nextPutAll: oldSpecs.
					(0 to: 1.0 by: incr)
						do: [:i | 
							newSpec := {#pointAtOffset:. 0.0 @ i}.
							(oldSpecs includes: newSpec)
								ifFalse: [s nextPut: newSpec].
							newSpec := {#pointAtOffset:. 1.0 @ i}.
							(oldSpecs includes: newSpec)
								ifFalse: [s nextPut: newSpec]]])