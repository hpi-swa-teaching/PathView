searching
selectNextSearchResult: aCollection
	| nextSearchNode |
	aCollection ifEmpty: [^ self].
	self selectedItem 
		ifNil: [nextSearchNode := aCollection first]
		ifNotNil: [nextSearchNode := aCollection 
									detect: [:each | each id > self selectedItem id] 
									ifNone: [aCollection first]].
	nextSearchNode setAsCurrentSelection.