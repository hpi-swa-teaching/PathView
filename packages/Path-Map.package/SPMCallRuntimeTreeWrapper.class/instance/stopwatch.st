accessing
stopwatch
	"Answer the value of stopwatch"

	^ stopwatch ifNil: [stopwatch := Stopwatch new]