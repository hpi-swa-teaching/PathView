popup
hideSimilarPopups
	"We still don't catch all mouseLeave event, that would close a popup-morph.
	So at least we close other still open popups, when a new one is opened."
	
	parentMorph ifNotNil: [
		parentMorph submorphs
			select: [ :m | (m isKindOf: self class) & (m ~= self) ]
			thenDo: [ :m | m disappear ] ].