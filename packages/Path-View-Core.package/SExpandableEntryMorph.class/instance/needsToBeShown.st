layout and labels
needsToBeShown
	
	^ entries
		ifNotNil: [ entries anySatisfy: #needsToBeShown ] "Recursively search for pinned entries."
		ifNil: [ super needsToBeShown ]