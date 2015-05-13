node access
steppingSelectionHighlightMorphs
	^ self steppingSelectionHighlightItems
		ifNotNilDo: [:items | 
			items collect: [:each | 
				self scroller submorphs
					detect: [:morph | morph callNode = each]
					ifNone: [^ OrderedCollection new]]]
		ifNil: [OrderedCollection new]