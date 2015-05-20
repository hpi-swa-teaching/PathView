state handler guards
isDrag
	"Answer whether the current event is further than the threshold from the first mouse down"

	^(event position - firstClickDown position) r > self dragThreshold