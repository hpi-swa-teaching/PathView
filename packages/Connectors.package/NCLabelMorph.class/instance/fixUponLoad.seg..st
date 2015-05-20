objects from disk
fixUponLoad: aProject seg: anImageSegment
	"We are in an old project that is being loaded from disk.
Fix up conventions that have changed."

	"NCLabelMorph passes any message it does not understand to its text"
	label fixUponLoad: aProject seg: anImageSegment.

	^ super fixUponLoad: aProject seg: anImageSegment	"me,
not the label"
