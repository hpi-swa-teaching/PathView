private
newSelectedEntry: aString

	self switchVisibilityOfMenu.
	self selectedEntry: aString.
	self labelMorph contents: aString.
	self extent: self extent.