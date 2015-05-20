*connectors-private
highlightForConnection: aBoolean 
	| highlights |
	(self valueOfProperty: #isHighlight ifAbsent: [false]) ifTrue: [^self].
	highlights := self valueOfProperty: #connectionHighlights ifAbsent: [].
	self flag: #TODO.	"use contrasting colors"
	aBoolean 
		ifTrue: 
			["self highlightForConnection: false."

			self setProperty: #highlightedForConnection toValue: aBoolean.
			highlights ifNil: 
					[| outerBorder aps pasteUp relativeFullBounds |
					pasteUp := self world.
					aps := self allAttachmentPoints collect: [:ea | self point: ea in: pasteUp].
					highlights := OrderedCollection new: 4 + aps size.
					relativeFullBounds := self bounds: self fullBounds in: pasteUp.
					outerBorder := relativeFullBounds outsetBy: 3.
					highlights 
						addAll: ({ 
								relativeFullBounds left @ outerBorder top 
									corner: outerBorder right @ relativeFullBounds top.
								relativeFullBounds topRight corner: outerBorder bottomRight.
								outerBorder left @ relativeFullBounds bottom 
									corner: relativeFullBounds right @ outerBorder bottom.
								outerBorder topLeft corner: relativeFullBounds bottomLeft} 
									collect: [:rect | self highlightMorphForBoundaryRect: rect]).
					highlights addAll: (aps collect: [:ap | self highlightMorphForAPRect: ap]).
					"self pasteUpMorph addAllMorphs: highlights"
					highlights do: [:ea | pasteUp addMorphFront: ea].
					self setProperty: #connectionHighlights toValue: highlights]]
		ifFalse: 
			[highlights 
				ifNotNil: [self pasteUpMorphOrWorld deleteMorphs: highlights].
			self removeProperty: #connectionHighlights.
			self removeProperty: #highlightedForConnection.
			self resetExtension]