building-custom-morphs
buildDropDownMorphOn: aModel with: aCollection frame: aRect offsets: anotherRect
	| morph |
	morph := SDropDownMorph on: aModel with: aCollection.
	self class setFrame: aRect offset: anotherRect in: morph.
	self windowMorph addMorph: morph.