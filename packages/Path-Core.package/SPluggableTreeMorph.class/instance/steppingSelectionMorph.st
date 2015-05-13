node access
steppingSelectionMorph
	^ self steppingSelectionItem
		ifNotNilDo: [:item | 
			self scroller submorphs
				detect: [:morph | morph callNode = item]
				ifNone: [nil]]