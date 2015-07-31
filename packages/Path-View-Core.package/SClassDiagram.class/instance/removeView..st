views
removeView: aString
	
	^ (self allViewReferences)
		select: [:ref | (ref selector asString allButLast = aString) and: [ref classIsMeta] ]
		thenDo: [:ref | ref actualClass removeSelector: ref selector]