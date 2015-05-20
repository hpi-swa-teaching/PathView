*fsm-morphic
adaptToWorld: aWorld
	"If my recipient or arguments refer to a world or a hand, make them now refer
	to the corresponding items in the new world."
	receiver := receiver adaptedToWorld: aWorld.
	arguments ifNotNil: [
		arguments := arguments collect: [ :arg | arg adaptedToWorld: aWorld ]].