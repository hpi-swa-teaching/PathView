accessing
attachToNewTarget: aMorph
	"This is not a simple accessor, but does all necessary work to attach to a new target-morph."
	
	^ self fromMorph: sourceMorph toMorph: aMorph