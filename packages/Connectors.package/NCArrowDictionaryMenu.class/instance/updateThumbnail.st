private
updateThumbnail
	| f newBounds |
	"Maintain aspect ratio by resizing the Thumbnail"
	f := formChoices at: currentIndex.
	newBounds := (0@0 extent: f extent) scaleAndTranslateToFitInside: ((8@72) extent: 100@100).
	formDisplayMorph layoutFrame rightOffset: newBounds right; bottomOffset: newBounds bottom.
	super updateThumbnail.